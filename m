Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D322206A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782400654; cv=none; b=OkfJNvWKbgIVsTzgfJNnlykbwoVTn2yQQEEwFb9JGYI7bpoeWrfVjytsntEh2RqPwazT4CyLWdeBzjGDP0wcdVr3iX517kgp46Jhv4RvS4977RDrHxQTt8ibXxISVP4KSOvt826OhNx6VxhjD3m1pfM6BLwpZFQScGFZBSWO1xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782400654; c=relaxed/simple;
	bh=gMSc0whr9LAtpqRm+iXHr1ackPHcTm2B/+hxVTvdgX8=;
	h=To:Subject:From:Message-Id:Date; b=aLBkJYY0uVZQzFXKzRcO+rcCYCMI7xsNpFexluhNeCwuhXbb8v+0NMbmFj6bbpeqjq8tdI39rK5hCrSh1VC7wsev34glArml/AJJrABBzZ6Z6Ydf+P3TVZcaZhTV2KD2D+TlmZ9eAe4a6bDzzGffeecuyJsSmmL5ZWiPATQQLfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MML/0x4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MML/0x4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE085C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782400653;
	bh=gMSc0whr9LAtpqRm+iXHr1ackPHcTm2B/+hxVTvdgX8=;
	h=To:Subject:From:Date:From;
	b=MML/0x4sPz34QSXh7UJxVPuXqZ70rbugmYGc3pD8yvnY6cS9tbGKSh1AEhlqMF6lZ
	 u4Xp8JoB+8v4ufzOvnbmYzfGdXX/qsdz5Xcs+YSB6pM6VFezd6gWgQGIMlMjRRA0f5
	 cFOg3Dx+B2LaxTL+nb+rcSuRgu102/sw9685kB1SnNvKHE5Bp3y4LIqeR9bPJepF90
	 6Y3rPCpwJxuHQD9UXzCuo47adn5lN7+gUBU/iZl8XvffXi9QwAw23AVI+Bg9OJo0Om
	 n9wCKFJQ0ByfsAr7rnM3rMu1QPwdW6wy1+F1YnDrgr9No2fsOeKc3NOZQby4mRqHN4
	 NBgurUy6iY81A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA300CDE00B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178240065374.14576.17882522949696950546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f7ade6184575118bd6d280e51c43d94602409e1336299ad66493f344e17ebf
Date: Thu, 25 Jun 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782400653
