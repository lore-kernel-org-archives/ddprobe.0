Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AA11B5820
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727805354; cv=none; b=pZs+7/rfwUsRBZvPmnSvdrqPkyIKT7AJ0fTPbDXpIor8xgfjhibPeVW8bJZH6n7N24lBPMBHVMgMXOGLl7/XVvB59WIDvauERRm3oGjgvOdTc3uiZwQ7fR2I2JTCRCbASIE2TbSWA70K3MnGBP8sQxCWn58K5jPSRFF+/wxssMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727805354; c=relaxed/simple;
	bh=FW0SqaWtiyskjSPjjFN2bC8JuqVe+SaG4/gqXD0i0zY=;
	h=To:Subject:From:Message-Id:Date; b=Dww02H9Rm1i8Oh3opUlyHoS5bzJ39g+ZvwJ6+qtG9/gafFUiulfV378UCdfDRLPR2lAO8uX0TnsHgDtmh3h0aciyvr1w2Me1UG6M4jd6525KAGgi4wEnkkmrxM/flKerShBrI3Efht5S/DOzghpY0FSOqMMkHXVM/z88/GejBKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0IsAUcj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0IsAUcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED9AC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727805353;
	bh=FW0SqaWtiyskjSPjjFN2bC8JuqVe+SaG4/gqXD0i0zY=;
	h=To:Subject:From:Date:From;
	b=O0IsAUcj6AeV4FELiVoaT2OVifbhajbs7ui+p77ASH9iNHgLIOJjemwdtwOYSY5kS
	 tRycbACv/nAhm8nxXa39BP5GWxMSX0uoCsZjkl5jV8WhuES5LAgw8L39Yf8UO40Nvk
	 c/gfshufJ0bE81aCWvuTp6rdrTV+FDczY8We0JFCg3aSw7hMNhJcCs5tYm6dst5+7o
	 69C+sVZxw71YBBsHcKAUIn3eaTVq8JazV8xBqorWlnQtqYIKacv7B3n+Q1SycNtvvv
	 nwprO/QC2ZtAV2SROjXtXFR4Ssi7S/Pzzy8HOM9bJ/cRw9QJPjF2K9Spst4Az/vwuo
	 zeyyipTheCbaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDA5CEACEE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172780535363.5613.16756541228791279072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026ad6750c0836234b1b5dc8ad56b50c5e7d7cfe1ef4aab94eb1ba19bd0a8048
Date: Tue, 01 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727805353
