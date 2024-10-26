Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E91524F
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729933554; cv=none; b=LWakrmj4ptktREjps1wNOWeOkCDFNqndTDW8xFDOzVNXXl6P6ADYOMExhkzWlJvaSZqHavGwGkHybMPaqUikFahcloxP/VC56jQboAlnK2a54YNruBIBDtN8TtP2cEp+5np3W+KAbQOg7cSLCkOJVk1xo5ET/+PvBAC0pleM6Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729933554; c=relaxed/simple;
	bh=DObpXfG3KoJ7lvUCws+ZV+fzUxHz2DokH/7lOhyxIP8=;
	h=To:Subject:From:Message-Id:Date; b=IFSP+XLNvZWIDSyXrTgJ5bJj3eOK7MkePuRo2qsRcIwrXFT8zFnt+JH0ub0uOMY238xmuHr+2C5vJytc0/BGivUqGOJUJMk6OO5pQT+mVcUYhHGH8qk2RDgsAOx1Ow2nCjgQX5awE9kMfw0asyQ8iKSZ5212DFD93rpDvmBxhnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6RRLMIq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6RRLMIq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FFBC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729933553;
	bh=DObpXfG3KoJ7lvUCws+ZV+fzUxHz2DokH/7lOhyxIP8=;
	h=To:Subject:From:Date:From;
	b=P6RRLMIqnyM0rpRJeobUwu8q3uhhF6gzqFq8bTSDibaT0os99l1feKXV7iGlMeK9+
	 QE3P52a4JPfRvCWNTjibCzBXrBZnA8vXJ3YW8PyUs98Xtfc8DWdSvzSJ3Tr4xGhAZ2
	 wUjBcwdV0MZ0Gs3cBC9OdN61mlw+Q0kGqq9gcGJZsy2KC66wUZYmlWdFkIF2ghiYuw
	 EGotKxjjdgn9fJ1qIHbCuxaywfnDk5cP1kEwKe82LIAr/RnQ4+nw95O+4BuZU8PoU+
	 8s2KTnMH0HZmzK6iuT7JxABbFvH0PuMnL5//OkaEUdbYKVAGOIxmEkV8Zzj0AVblyh
	 B5wZMlunwU5iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4999D10BE8
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172993355364.16485.5290584990933441478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efcaa6bd566816894401b65630cc1de979faf8116c69780b58f5064dcfa71305
Date: Sat, 26 Oct 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729933553
