Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E6E221DB1
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772400294; cv=none; b=ehXqhxUXF9g+KX7a/XsXx0rSVHcQqw9HNpOtmbt7Ef2ATUrAT33QIS17KvsHLB38HJ6G3+DwdbB7K62pKiZ6B/+2PSp83Bu7Z23Jc5UJquhqcTGcu0ZhxslYDOzZMSapRC5STaArobek475uu+7vKXIwghd22WCqkKxLYA6D+aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772400294; c=relaxed/simple;
	bh=dNOZHVRKGyezK9Ds00W4ckoiVZ6w1/k1Y/XnFg2eeSw=;
	h=To:Subject:From:Message-Id:Date; b=fTxiSeBBVmvbALTM1yMazgEurAf5K8fcy1OFsHOWTAhJ3konkGbvDPvWbD/XETosA70Hb9354EqYEixCqzDO6ovwp3sp0B2Cr14ngxpohOvtUDc6YRYRdd7JJL3UerZqj3feFxFGzLqFko8HPx4+cZgxE+la53qi8zMwsHNs3d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fy77AXTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fy77AXTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F1DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772400293;
	bh=dNOZHVRKGyezK9Ds00W4ckoiVZ6w1/k1Y/XnFg2eeSw=;
	h=To:Subject:From:Date:From;
	b=Fy77AXTjtA+418+EroUiUQ1KuOkWQtpZiVCynrrxBPRi1AGmQkFM7uBPMQVIoKAjN
	 G621OKMotD+1NXKy7mMCGtzzAlhKEAiiTziK1qSEk3JEmK+2ahx5T7mvP7DULstiwX
	 oEWSz+1Rl+Krgm8a7LKtjkIhYj6KMFYfGVVjhtgzM1Q56Yf0z3ueI5CdjTdUGKL5Fb
	 WiqK5+ofIIr8PX2CK9wmFIbVbG1PR0tGiJZPv7Jv1/o0EWZdm1a/Uif0KKR8m1ud3i
	 IlFEia88SV/Ddfo4uZKTOKnhNEev/lBEkkXyDrAhUz5IwmYiTmRm2s+arShjgdDixn
	 FM3Nk4FeyYCeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3BDFD0078
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177240029360.13504.3156727351769770528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a0bce55eee8e3ac131d46338c3ca5782f57caa22857055db19be95c5601595
Date: Sun, 01 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772400293
