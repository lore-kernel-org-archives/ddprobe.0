Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA6A26FD84
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760509794; cv=none; b=M8zNZsR46cI2/qA5pzy4RUuMTuk1+5BMJlqGWQOLRq7RDfxqA9E4OYjivh/CL5NJtqkXw4tD3qlqV/6nBdtzaxAUn6Jih8FL6H0az3AARipFUzxvq1x2NRDsg6nEC4MdVSjWYXCVjE7NHL/A0faxKUECJU91zvSLkjXLykF5THY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760509794; c=relaxed/simple;
	bh=HfrVCxNWrtUkD0HvPDNVs1yK7098f0c7v7L/vlY8nVs=;
	h=To:Subject:From:Message-Id:Date; b=WMryroxEfFoeHDP26R1QuwVkWmmDNdRBmTGxfAgWbsepnPOpmzaABdAeEkN2t14pV1sVOwj9CANsQCva/byEXvaf2qRmbmcRv5mIaXgece0ORfl5w0icIzwF6yIHMFNaWH+YEHDLTwXZgUI95R/m5mHwieyz6mjunIXQzeG+7u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3/+7XN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3/+7XN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C79C4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760509793;
	bh=HfrVCxNWrtUkD0HvPDNVs1yK7098f0c7v7L/vlY8nVs=;
	h=To:Subject:From:Date:From;
	b=W3/+7XN/T5N8qBXUz1OwsRCT1MwpXdq/PVlvMCNZpbImWKrTL+LLF6epVzsKmOMX8
	 3OJ0rRsyPOFxTQYKhGzPrj9UcNp4Gy3EiejW4Bs+4moPNloX3QXa+7L1er4l35ranR
	 qVZ6V4u0CY0k8SEvs0Q6siYuoS0awMt5P/ldqNp4HDfeUVPDu9JQG8DYloyqjj2xwh
	 6rFxh+1dLUd9fCIdh7qhrAwlMoCEGLewIf0aw4gZx3mtvabIuTxjzrIpiQghhPH7QW
	 e+PDbIDs5LUdrCw6eMXI10LeWzXoADRCRlh/fHaFq7nLIFzPD81qPx6loKWX1FpdJh
	 PFi0WKqeC15dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910F0CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176050979358.16407.7775621660775802662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77a46501887c9d57e2767832d1ca3f984273a8064dd1062022e317481c8329c
Date: Wed, 15 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760509793
