Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BF91547E7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761179394; cv=none; b=ugvLHlNqt4eoQRya/vctpzY936syrByebJDotNBtjLmpscIL83TQtje2V2xRpM3FpFsNVYs3rH29AmXPFChgQJ5JLWYzM+Z6NWbuSsKOrnhIwCSsfsloHMLAQeVY0A5MP8IGZ9NrxVKKWN5U7Wz9teHLfCMH9sHIvkqiu20pBYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761179394; c=relaxed/simple;
	bh=zLNy2sAScCiBG8QU2ZcMYFb1KJoCFe1zIvj6nxLQ42M=;
	h=To:Subject:From:Message-Id:Date; b=BotUVGFiEjl98WZECEyqP/yANlzZRh0Mf5c12fY+B0V1zmb9Kvad/xNtvHwJNV5LG/al4wg1LhQFyHm/D3b5JHyDVh+R7Jj0OhzXNKo2JMhT6CkKggtwpAbL32XIpOO9g46PIb705h9y/uazs3eXiCGZEPCU4xlMq/j4nN3JXvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNPosw6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNPosw6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4198C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761179393;
	bh=zLNy2sAScCiBG8QU2ZcMYFb1KJoCFe1zIvj6nxLQ42M=;
	h=To:Subject:From:Date:From;
	b=iNPosw6DGLhi+xPsJGW2sMRQwonUubKA5hAZaJQArrGK8NfhIjLiO3wzO9hFdQATI
	 rUcadh/N9kYjLbsPgfYwWN+eYTGiBeD/gwZzpnylODsfO9xsQNZxaASjco70EfIhA5
	 GMChIvxMmTCByaIw64y6rt0QIjUMJHs5GbhX7K0wpq5O5QoBp40gCARmVOO3Q19BYr
	 FdwJrN2AEz9ZzMTOmWbEP4EIYGPK+E+xgxfuGRJwmrlmdrMLAcA1zby3zqrT1n2yH+
	 MfP0Hxhk+1lt6PKLpR+X+X6IyVwjwl4fDt23PGSBNkb63NAF2I7K3+ytjdbIrc84AT
	 kEFRNV1abwS0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9114DCCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176117939358.24085.2232236819946795505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be04fcaade830b3e7954e7724020faabefe534a68ccd97fe17f71b8548e89dec
Date: Thu, 23 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761179393
