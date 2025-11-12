Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC5735CBC1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762991994; cv=none; b=h4CUzFsbbN7zHwsmj6h+zeN9PBdmHvaAwb/xnGx+lRf9RVXxgQr4aQrMdbs6CbQZTGnbxhZas3HWPraUxZMLldvJ+K1m/EM+U0PuZ6OjRmJdDNUjHqHQo7vJpes/r5AVz/gNEB0pxEEBOva0FcTZaSEbrzka6rEyh0FtieASgNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762991994; c=relaxed/simple;
	bh=L9BHj13nnCIpRqjosBpmJbM2fINetKxPiCOB4yVovi4=;
	h=To:Subject:From:Message-Id:Date; b=PIays6Nu56LrVyKbrJHHvVrJvvpsxKTQkoVdLpHEawLOcnJ7kWLY4WS5Mz/AS/SqIjBlBJsqJpsDCTHj5j35Y4mJ61qhiSWn7tOGPGmuMx518Udrpn3JdAx+a9ixN/6fHbkmRc9wcioyMoC39M/G53MTFBDg17t+yPJjzqKy75Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iz5Ea+jL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iz5Ea+jL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBC9C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762991993;
	bh=L9BHj13nnCIpRqjosBpmJbM2fINetKxPiCOB4yVovi4=;
	h=To:Subject:From:Date:From;
	b=Iz5Ea+jLUjmBGv7fCunNzEdypzKTMFeDxZA1wQ7Kmb/h97G+ecnZnJc3MuAMMe0/5
	 tlDSB58ueAa+SAdZZhu6fuLzg4k+ABZSpwk1LGiYlE2TGqtrxOyXoT0CiKAVSoeH5z
	 p4TsYo3yjzUOweKbjsvE/5I4Ri3+seWXJPYVMH46oCq+e1Bh2Q4YUaiiuTrCVL9q0h
	 jEdWtesBOW0mWRlsJ4aKcrh8BL6J7V33aMCn3lUQbtzphN5pLyIu4PNbOOaP60hvPB
	 k2zRj/XtZDbM8cXYCcXb1+JXfVsrO8NhkNrdA6aP7/mMbtscnW00yez6bZ29F3s+SB
	 YpZFEWL6kHQcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF7DCD342D
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176299199358.2624.13777874013747122639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b9e5d4e7e5f310805859d74c9fb8c5119a2065cb03d008804afd0e07be57900
Date: Wed, 12 Nov 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762991993
