Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553031AC45D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785109834; cv=none; b=jONEs525DL8D8ZdSVjs3/ESOpe3M0wtGk4DP0f8hmxICWvqVEI4z6TATKnsyeIPjOKxua6y4rqCZqR/FmfshjiBJcq4RUo1ywXZjALhxCc8pDvB19qBFc0Llwt293slbttSLduNZmLjz1Nd4m8a/W2JqwG1UjiNxTNaAeZePwVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785109834; c=relaxed/simple;
	bh=tvVCzJRunUL8dzdm9lL1rIykfQG7RJMGFPIJPhb6cx8=;
	h=To:Subject:From:Message-Id:Date; b=BjgiS7nelRBxQygu1EOzrTuFL/L15ZXta/M0QWsNwDYK6MNhUVfDECHvuyA2oRWLmXB2KOLHFk6F6Cy+bIY1ax+h+FdtabEXnfGePVYZEaUoq08xb4DmKBMAWDUecPDYx1YfR0GN7a1jOLuK6mPo34qH5/ikh1ubC75K0TDKTFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vO9YNjY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vO9YNjY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04C9C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785109833;
	bh=tvVCzJRunUL8dzdm9lL1rIykfQG7RJMGFPIJPhb6cx8=;
	h=To:Subject:From:Date:From;
	b=vO9YNjY6U9YfcvOhFB1Aa5SvIcYFenlBZhSlyaFxKwAIaJb2oaLBojM1qxvnOfBeI
	 ekM93A5jH1j1LuM1p0p1mNJOjJqO3Jf/PvCxcXAnO0HzRekcPC8Fa30p/sJPj6cPYl
	 gDu7YAZDw6POswdQqrK/Gjj9YTRpfXJiF49eFSdKJZbhU5AHadLrfpFo4FS47BVswm
	 KmsC5g2hCAo7d8VrTybHsA0hZnVM8Uv6CVMihVX28DMrwKo5bplI4Nnln1pad6l8sf
	 VHKf9CqcWJ+ZVdGqspTho3WvAiJdg7YCQpeifXdYBTEmvuwwG4HFMjECk2qO8+c954
	 GHC6ejs5nyr5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6C9C53209
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178510983368.765.2816644232716431519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a459ecca7625287179f6f355dc819580fa8300ba2cb41213eef9dc6e9a2d7a34
Date: Sun, 26 Jul 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785109833
