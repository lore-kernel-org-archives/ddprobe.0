Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9A51D618E
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761967794; cv=none; b=HvLe41/Fgg2LlKzi/eZuGh6Aza4FBA1q7sYi8FuFgxkTQJ/epKqmAqGBmlHpupVEscShszmYM1u3Ki22uguZ7L5twLXyIIFKSG+H4AXOP7p6r9z7hCJn8iKEDlFKFmbRWtCoqnxP/HrE5D8pujph3low0pUYZh7YGKYCNj0UoxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761967794; c=relaxed/simple;
	bh=JFgEfZ8DCdbI8VC91+hCY0p9UQDD3ycHGCbas/h9BCc=;
	h=To:Subject:From:Message-Id:Date; b=i0yK2MnumYLpYqyVaqr5PkjoQ/DElgphFZE59B281ld+txJZ9zWCH8VdFMCKS3SiTUpYAXSUIeYue8PztjsWQtv5L1f3dX2r0R1UCYLUVQEZ+DcjDqj7UYOV4aZIQd82wbk4Yl4Rb9zZEZWHbd9NslRw505Ro6Z8hb+lBCqaqkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqJTuSlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqJTuSlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A919BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761967793;
	bh=JFgEfZ8DCdbI8VC91+hCY0p9UQDD3ycHGCbas/h9BCc=;
	h=To:Subject:From:Date:From;
	b=GqJTuSlRZ5najz93WxmpBgKAJDVA1i0NkRZiULHHN1CAqNyCkDls349wPYgwRtBHN
	 LwFN8xPkzCd3XQv+oBDEokvgv3oeCiPaQEAMMno+RCt4upyvo/6GpiKYTka9nU4WVR
	 BQU/pPGafuuLKvJ00WecsjK7pg2wHid9+Or68FxqR8I+ihoE3tQg2KPFXo+A+v2GL/
	 OvK2ZESvtkn+4IcJxfNTTy98ZysLETvm1zfP+3J2BSp6AuET+zwhd5RhHMD1MV+AZM
	 nKzfusFcCriUuBb3R5krjiF7GcAJ2g9975Sd6v2qv70a69pAtNQA2BeDG8L6ZcBnRJ
	 T6J56dl30rsYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95167CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176196779360.3739.17649586467848969129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a58806ce707ffca7ed9e5127e6bb553768dff1cb8a428d62d43954fe835213c
Date: Sat, 01 Nov 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761967793
