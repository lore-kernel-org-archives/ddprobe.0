Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A2D4C81
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745733595; cv=none; b=TzXYx4VYLa28DUArwMn6jDd4TdPZB8Rf0UkV3vI5FQnYju5Sq5N6VCSReXfwnm8UWnNsDzBxj2T8w5WPzL7Orp9ohmkFjgp3+QbitGhO+645fb8craae7qgSUSd5XFjOybhjnPAIo4TLxTAPr2vO/QYl77tKJ8HaCU2fzobegPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745733595; c=relaxed/simple;
	bh=9JvpvoyywkhWgPVnab4mfqZu5zkYtD8z+0Hh9HueiB0=;
	h=To:Subject:From:Message-Id:Date; b=arDBHtuMn3BIP3utyV66B4IOCxE39fmIIYcoRORdbUP7P9qjl7ndouzKXF5zYX5GElW0R39zh1LZhUnlf0l8KA9zmocK3M18Rvnr5CJyX2H1+0jz00Nm1n+aO1iTOyiSmbYj2rGHNekVWQmGRe9N0jvblTNfIFWM7a8y43I9Ql8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/p/kP5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/p/kP5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9A7C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745733593;
	bh=9JvpvoyywkhWgPVnab4mfqZu5zkYtD8z+0Hh9HueiB0=;
	h=To:Subject:From:Date:From;
	b=I/p/kP5zrK1Jt/JffkZsPISkDGBBLxc8wvKUE3a8KXu8qctekdhCYwu8xojgvBqpP
	 Esy4z9fXjlz3OjofUzYduLDzVXesgtIv/6ZURMO1Nesnv5d4uZBqYJSCvnf8ZIeU0B
	 0qFXbCzfLETEzcvqzy0e247Rr8EDF2pgNsdUBWAQPhJQrgwn6Cx2u8UWrjhU9cgnCr
	 9R5y11KoukMn1bQZEUEt0hRmTYjwvZ6w/W3d152CmdsRJZoxD0YDS18a6glt2wAc22
	 uEZ6DDAkzAIycTNQfVT/b5eui0AppdscVrFuWz+BPNMZU9jZCqfijrJdpjOK/G7f1O
	 iqJTd/GKrB6Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E915C369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174573359357.6316.12070401164470116100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece2e920d0bd1585521c48a5bf927cd95dc0a8c3aec07893add1c54d1440a76b
Date: Sun, 27 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745733593
