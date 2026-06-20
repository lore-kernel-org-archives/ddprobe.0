Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486C227453
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781936794; cv=none; b=nRY5pDh/gk71xCVADAKhiYJxM1N+70vg7oFJG7CLZhHOvxjRG6MIhNh6krmIdkTahexIb4mNnf/yCphLRrCd/PA8GNVO6hejEmFtmOXnfB/o92w1HjC4Cxi0Yl1eGaVempZFyiHuAo3jAWwir9EdsXUinx3/p1NZq+9vHpIqMqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781936794; c=relaxed/simple;
	bh=Y3oIdHm1iSal5cW4PzTWVmjbOTZKMmS93hY9+2zSsmo=;
	h=To:Subject:From:Message-Id:Date; b=uWijtNzrR1xP6jiKPR45sInnTYndu74o8OswDD6tvMYJxbc6ZTKgPMVrp1QofGgLIdiZazVolXhGB8PYZkhNnynlkBnMZnj+oXCGqFrLtBeDrKhTXqc5aDwSP0q9DvSJ9dzQC11jTBWvmdgFbR8emb8TvQIIF01lAEUFmjg8FRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGajVuk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGajVuk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA357C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781936793;
	bh=Y3oIdHm1iSal5cW4PzTWVmjbOTZKMmS93hY9+2zSsmo=;
	h=To:Subject:From:Date:From;
	b=TGajVuk/7JnxfwKDcRl1KGDUlL0oqMMmn9D5aFOOie5DQCzWcyP7U0ReuJnyC6hkI
	 zfY0dQJ7jKlDKdwIReTe/f4LzRWLjW4GsSxinWXQG6IHzaHbVXoTiCPiGSJPrGGZNo
	 Ta+lZDOzUQt8dfy13KAvEFNH8jOPpEEC0SB2DQ3/Wfsa62cKIDAbBl9/nZSOtDB1FR
	 CIQOHO/YlqqZdH4NuncOwQn/qR4nqI74tRkGM9rz/UgVbMXw6WXhwZC4WBjGzVPUAY
	 KnvYWUHdt4N2JIfm2SGsvJMARcjeGWV/knAyIFR1yUzYv33tq0o/w5Il9Ssmpv4/lM
	 0UvJbTAHwyzjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EA9CDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178193679373.31072.12620172879497749622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a75f9eb6c5212ecebec6473df2f52682d7b9936afab5b004b6f6dd16202c0e
Date: Sat, 20 Jun 2026 06:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781936793
