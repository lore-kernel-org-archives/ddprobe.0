Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4407E293B5F
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782675514; cv=none; b=Ewat4yg/gj8tS/Uff02LtxezR7qQVv979B0MVqc+biQyj+qAqoPC4hQ8dgjI0wqVMQUJc5A33iRAZXdf7JMIlrF3w6iYl21k6peY03X++d8Ww3+foMuLr/Qv4LM1Y2BOcW9ydcBqLdSO6lZCjtCeWgVJzQ+pfCBcn+cOPlHkILc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782675514; c=relaxed/simple;
	bh=ngmR+jvjVAohJNU/IQJH3uiUF1Z+QZF6XvMkj8Zok6I=;
	h=To:Subject:From:Message-Id:Date; b=M+6Yiara7hUZLWIua5FYKKZHy31FupkaAHP+Yh/rjB3wFme+sQmdU2CqmUVvvRnPvmkujWIi4u6E9u+QaSW1I891yIPWVXO2URLTX3JvCN9afHRQfLSOTmSfNjMtYlmjMNTLqIaWyzAYZ/sy4hWwjVI76mFgrz3jmZdIZlkj35Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V48W/ZuR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V48W/ZuR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66B3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782675513;
	bh=ngmR+jvjVAohJNU/IQJH3uiUF1Z+QZF6XvMkj8Zok6I=;
	h=To:Subject:From:Date:From;
	b=V48W/ZuRERsR5l3BsonjuHyEZaMGjGLCZgHTQLW0lsqwJWjvUckT8jeb6VIcd37Va
	 M6drh267YtIcA+iUJnb31+tDh5xYwBDhxhMqI9mjT38CDwzVFcu0MHxki1guiiflwb
	 k8DTE5If8WXTbD8XsHzPwrkmNJmFEmQaoceeRMaYvzwuBSPSbOqgMFYb5Iir2ZELpN
	 5h5CTsTq4H/ZztV6S2JK5h8oAu2C+H0RMUEEghI3RgbJ8zZoI32A1P0JMzYYivjF23
	 S97d1cX+wzbSw8DamraymVrIE55B6ZwR4M3Yk/Uix932pz+lStnJb45KiMpnp4gU/B
	 E2adBO4UmrhgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4142C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178267551369.7242.11369159856001349696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d015192b6a20c7f99496f277a7a60f6a27ea58a7848582e5094d8f9bfcea5f
Date: Sun, 28 Jun 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782675513
