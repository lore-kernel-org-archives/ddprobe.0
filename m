Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FADE280CFB
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784953834; cv=none; b=R28YJsXPp72twf0kxRLk7yzCzNolv1Dg4R6pygtKc3hrasW0LWqH3XtbWotJdxwDvU2FwARc0noY7w2Hs1W5parRqLIO1B35Shj0j4lsAfdDgLVvYiegILaXqcIYxU4cI3K7p3O8Y3z0B0ZH/k10NDjYGDD9F690/ZvCMna49CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784953834; c=relaxed/simple;
	bh=Tsl+0PM70Zxr/jXE6wS66HTnBxlsq3zQT9q4zJoOMt4=;
	h=To:Subject:From:Message-Id:Date; b=tI4fR4SEy8lNRTSb5fHlCx2HO22GwJ/jAKNWjeFr/KNPOfo02Kz+gx1U1u4FyCCY0F7WjzJgLe+Oxvt0AasCTtzvjSZP03BqJFfAL/hj2+70edIXQOyqHoW90NRvj3y35FwumI/ihDuV6UKxwQ9KC3DRtMJRSVATksPtIibra8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xq3y1uim; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xq3y1uim"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F04B7C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784953834;
	bh=Tsl+0PM70Zxr/jXE6wS66HTnBxlsq3zQT9q4zJoOMt4=;
	h=To:Subject:From:Date:From;
	b=Xq3y1uimki9R/uI7HPFK7BAfRPtZSLI7anMIP/87YMxuFf/bwqaIXWOwhBbweaSGz
	 XT7bLNQggctM5AazclISR2t4+Ydw4pog+1oEJKYrV7snJhruVoRQWk4KKPysM7zLEl
	 2goML/vag76G/Gu1Mr9XHri9jO9H2DcnonzlUSdbUvdi0FBJJ79sSD9vXTo+Oynaqp
	 KSlwLxKx0gY8dHp/s7CUUg5ghebMqAl26X0UG5G2djSUBznPdKhfQQwyPGjq2LNQct
	 /xe38OhAjICa0N5QrwjRktDZp1I6HXdZE9F9OIpnn9WqiR2PfzVx8kubrYnC6+gd+d
	 9reA9SgQqQb6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB77CC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178495383371.9834.10987199280423924330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae819a3872c1c505b7d6ba88216563cbacd2a458fd5701e7ba29beb7eb3bd39
Date: Sat, 25 Jul 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784953833
