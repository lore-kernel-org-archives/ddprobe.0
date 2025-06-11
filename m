Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225C4283CBE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749646794; cv=none; b=FWH1+ZrGMxereiuPWA3IjnmXjazw7XBPWaULtOJcl2g4hGlH7xc8VNTyr9YKs4bp7Irp8QNvcU8vAC6I1tzIh5uh3j76G9mahllX4tIzkENh4szXLY3OdE7ZRUPS1wnFJJltdlsmnWlNIckniuiKy75b9DUZp2TtLWSqEFpXzko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749646794; c=relaxed/simple;
	bh=R0ZYA9lJ+GDj3Qp9Q9KscCgGQUq2cw+rkULVRI4FWWQ=;
	h=To:Subject:From:Message-Id:Date; b=NVKqKVG1PAfwZECypl6SVywNwML3aavx2/+W0HdH3TRo/sRwfndmbz+i+caC3M8khrX06lDxm2kbAJWJ9HH5jKNl0unBQxtqTxqJVdsLTsHUK0FQra3dpPbCioj58ZCgLT07DEr4atE5J3HA5neGe9Q/klIrEgNg2bc2XER+ORQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUagSFCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUagSFCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7359C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749646793;
	bh=R0ZYA9lJ+GDj3Qp9Q9KscCgGQUq2cw+rkULVRI4FWWQ=;
	h=To:Subject:From:Date:From;
	b=bUagSFCqEh+7km1KIRJauVeAtgNm0ufqMiPDkER//qCvgstiHSwhF79eg1xvASppp
	 Q5/95Ddl+KyTl+muBgD63gStVxNR9b5dZSJgGYfMf5J/5bx7+eGyFFG+lbBEugsPqe
	 ohVhjsLqJTcDNnNlsN3RNdmm8bw1/kzGw29ZRigs4HV4+Od0ny1+Zg2p9DSvn8iJhY
	 7HrEoigF0/ZJBnUuCedxs9JAMyTHwmRAsXf6G3be1roQvH5n9uA/F8Ry3OsRLCiEyb
	 I2K2dO9zWmYrn5tSFBYD+CTcmEUt5JJ7Yr1KodoJVotWDu45NyaZJH9ZFUxuv5c0GX
	 WN7VoI2nW312g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F72C61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174964679358.19649.3922340240653416485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eabcb4688671cb6dc0390eed7becd45f3e1fbc166b855e18875ce8941b585f4f
Date: Wed, 11 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749646793
