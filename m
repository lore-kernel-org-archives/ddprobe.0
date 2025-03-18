Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6411917F1
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742287795; cv=none; b=ZFwv6NCY+Aafy9+V/0y6tey0IZf0YFVSqwc06v69FmzwFBvRFm+oR6uJThNjhZtwUHo/KxnVaIuLC7O/3fycnhKx08NQYVbu1XGaKFMyebLbjMRgXYubmmbTWV3qc3mLIEEi6E0R16ezh3S8mlAZX70YA2aO+BVYnG2U/zrswRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742287795; c=relaxed/simple;
	bh=wcYVnKb4472wsEKEUZebBqc4FYFZSYtgut1If+Kbuu0=;
	h=To:Subject:From:Message-Id:Date; b=LM8N8+oAkpJ2Fxps92V7feqyfMEP+3W7ppv5rX1gFJBivGbjNdGAq6dFbdvIXJPcnP0WsSujzA0a0LK7uENRL+GoTyW3SVfWEUJLWxkFOirH3+wE6iN+m5CsAifwC9wqKPDpJCMKnfIbeiDdZTo48RjO5+nfRgn5PjY/6aPCZPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQr2iMfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQr2iMfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CD3C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742287793;
	bh=wcYVnKb4472wsEKEUZebBqc4FYFZSYtgut1If+Kbuu0=;
	h=To:Subject:From:Date:From;
	b=SQr2iMfBsZcduUGJJmvHmndnijOGmBAHnnlfnXXV66x7kJKALHFzdxwwEklpv8V8B
	 v3SIoQj7zIHF7kzn6wLWGDn1o5dJMXSc3h7ELd0niajVJCwaWAKF1YyJH8EniM5hBo
	 0d9XZ9QZwuRY9eNzWAirfVHgmwa2imFxpz5YC/8uKljgp2LQs2ChyUCXgTjY79eVMM
	 TYtKpaMOkEWlZ+xC16Qh0Hj815ixWM+cFrtXXioRogWnaYOBgFshg32BNeg4xfZe1t
	 XQTrITkh2wDYuR6z/BRIjJPx7zBv59mPUjsqlMAhfImuovmejJypOI/GsK52b5kWEC
	 vw7tXm02DBW6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE902C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174228779370.19565.11694804523164806069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00afb5303c951a103affde024b849e39e6fd0666e67dc26f51cd43d9a74b8126
Date: Tue, 18 Mar 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742287793
