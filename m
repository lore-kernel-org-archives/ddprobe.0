Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1BD2797B6
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745852996; cv=none; b=g7kIL7qCMkTBxfe1+wfJwehPT6s8o8JJ+l5lyzmsRiwcKp9YwUGejCSpIU3Gap6+NNhx3bur1Vyq08TikIC+JRzsJizN6+PvAA9ipvdCyQC/P0AX1nIEYEQO0JT9ETB4X52y4KoIg6oY24+ennGBOmJiltqf0pNvvzvPYLwHpBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745852996; c=relaxed/simple;
	bh=USlCjkbknpZFPq6Sxdx0+gGC3e1qewIFgoocpVorXeA=;
	h=To:Subject:From:Message-Id:Date; b=YiqGNRovh2cLZzpBUDXdy8OyvhPZ+i8wocap6ZTDFK9QDBQEazofe3VoCuBPVEeGszvs+Jdlc5SljSZtgDd3/Ym4RZpVnJ54f75G/JY5uIq5gOFpkYnJ36Xzlf4q2Ecw3X/+aIj2G+1/1FurCRo0NSaj7h7ar2p866ksUuU5Ibk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/qd0hOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/qd0hOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0ECC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745852993;
	bh=USlCjkbknpZFPq6Sxdx0+gGC3e1qewIFgoocpVorXeA=;
	h=To:Subject:From:Date:From;
	b=f/qd0hOo4oKc6CmVTNiVEZI3o8MkxlYLT674ToHP0Pjm4EEzXMIj9rdgDbj1jBtMR
	 qHZBOG7D49Lpzqk8/ImDYfpKfNKxq4LhcbA28exQp4St2+I48uFMLpD+Nju+rZ/sPm
	 9Ye+EoXfyIncYeJ+AHktiv+nBMxiBq3Q2jLGzJwqobgoWvXxs0JEJMh9dequrmuQVs
	 tlOyv622DpDrtGWF+u+E77PSGbEGjT5bUbIY4rv92mV1EjCQdHbhp5OtrW1TOTD7T1
	 vGInQeobbcZ6D1aRnkix8o/M9bkxz/BpWJUpytmrUdBWqF9H/shO4LNKu96y4ba6W4
	 kwxqC4k1XnF3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1DCC369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174585299357.20958.15486380981328347035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9308f2b24be04bc9abca5614a183e42c77d73c675c8b0f5f29c80a641080596f
Date: Mon, 28 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745852993
