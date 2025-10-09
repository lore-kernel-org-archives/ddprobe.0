Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D77919B5A7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760021394; cv=none; b=aZwxrkY1hAaenZFlf1eyeOy6IRHUsw0IyuWCXROgWx6kCvZJ2lz0T3g7dbn1qxtqrEJ8rM6RXHPZR77ljEZKofTOtWm6qOCvmspKURdcIeY86svaTI2qWEzv6+1QYE/EUnHqoEtHgMQ2y/VaHEflJd/b8I3wrhY7Db6WtZmF6vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760021394; c=relaxed/simple;
	bh=7fVPpL7ptK0v+tacJREqgT3aihaJzOBX2YeFNwupJac=;
	h=To:Subject:From:Message-Id:Date; b=k4/dPIbRvw2d+CCfysWobPL8+M69+POX24YilwJkLf98aA6xS//ZEGl/PR3AIKScep/QW6mMwbgjS+w8D6hMOAEJfSM0AgryuTg2wqNrBOBYfVMwal3lihQ0/GwFiok8Us3HYvec9MOmvOq4v1rOE3q9ShqVeGEzSHI/t4n1kDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoqxY5Zs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoqxY5Zs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AD4C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760021393;
	bh=7fVPpL7ptK0v+tacJREqgT3aihaJzOBX2YeFNwupJac=;
	h=To:Subject:From:Date:From;
	b=KoqxY5ZsmZvVBHyeCmX+Fo8XGMym00Li9rUMVbXFXF3AKdz0Js7Bs04hCR+euIqmJ
	 oUxXvTfmjqyv6y0h9Y96D+CHUZQ8/Mrn7kgk6M51Z9N6Qny5dXKBGn8eL+pDDew792
	 29vF6QPbk/7l5nE1NqdT/94QmQcNUwC9mpKLweWKXxTUsIqt3X5zMK8erdwq2TVYy+
	 Y6VQf+7aNTDsvJ3oRP0xNs5/YzfVMJ2l6zezRCT2VrDZkh1DazpGDgk2C4FWOShlpr
	 la8Jz7iQEfyoyq0jwymrMrNw3xzFcagMi9rrGigMxDsIh1N329C0hQAaX/h2Rfg5LT
	 Ktt5bGq9D2SpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF6CCCD185
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176002139358.23964.7244348101861323091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f9d82f193156066441eea6fc095d15aea9342cbae2ba139dd475ebac71ee3a3
Date: Thu, 09 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760021393
