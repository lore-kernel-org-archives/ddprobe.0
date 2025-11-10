Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1386230CDBC
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762784394; cv=none; b=t6Rd+5PUbSnZIYtKb/Pbjnr02CsRrmbxxIVzl/fG+T+l+jd3tLEzGf+GYIQptnqAhuLmUzA9vbnNDWxQnJ8VaMuOGHWd316q7NaDS8DD7lak4u+LVvLVXvAVPUHffjeKPVwppDCzn/KiV/2SwoaNSYpwQxadYg7TzmbnDT6mnX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762784394; c=relaxed/simple;
	bh=KahescxBPvH2dM3hy/FeZ7Thq/7aY7bTsTz3TVtxLiY=;
	h=To:Subject:From:Message-Id:Date; b=mTdKiVBOU08ThqJtnVzSr1tyooPZjUT9ynGabjToA0KYpZPVz3t6W5mEUt/xgLdvuduQ4+fAcz7CKjuSi9glTwTkue5TL1MO7R73JRx72ZAPEoDOovWFn+bdixkZtYkuV8zVP0+W+wRjD4eEj9gjp4EA71nYtkkT0FD/Y0magO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCZfwOg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCZfwOg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BCEDC2BC86
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762784393;
	bh=KahescxBPvH2dM3hy/FeZ7Thq/7aY7bTsTz3TVtxLiY=;
	h=To:Subject:From:Date:From;
	b=GCZfwOg8UOJ2uXTXwTFg/BxmmH5a/o5cR6d2MkiF7MoE81QsVxj5Phf507A9d2tM/
	 4GHDTJDOfnuBeyktLJJBbjvtKXIRZfUsZjbo5DTAm15H0F3FUq4u78IZi05k8pZ72N
	 jBDWF+GJT4B9WNzxKy+t3J9B3AgH+GkXXw8jZW727Wi4Ol122kZbp0qVH2NRyIkVfw
	 gahu98NvB02ve2AovYdsbnHa+FzSBju8HkgZnM3F5UWVIpOoGX77lErFVJ2m1i5EeH
	 iOGmm9YSBd2UI5pyQJQEW6iuLGLOI6xNvZGJwwLsO2FwubCzFInaMBEVAKwO2ktNYS
	 3c68kwF5QgPvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F38ACCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176278439357.26829.4600192232668409042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5563fc5547579e853c30281b7621017da3ffb22fd93809e678587c2a3d5748a1
Date: Mon, 10 Nov 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762784393
