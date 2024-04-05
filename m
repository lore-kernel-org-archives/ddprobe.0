Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E428B1C696
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712299097; cv=none; b=YHxbmlpfRqjKx/A/MAXiB1EqZYylE6gKoQ5IOtEG+SQDTSsE18JFf0Z8Iuwu/8iDYPiTaEWooi5tS0raBvzJWD9EP9+rbmpSL96p0BrMbwbWsMmOYDs8U4KRL5dvb3MjH1QqMiw3kLOULdupUgHJsBJ69CFUBySsvZPzPxDVXZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712299097; c=relaxed/simple;
	bh=uk8QV9UhygcYTqEThgTsx7Fqy1KyIgLnFtb+m+7TA/U=;
	h=To:Subject:From:Message-Id:Date; b=ppLR4rUaIfLY4kovL4A6XBHYU7UE7H0HjpFyGGUAGp5DfbFuBwcy5kXmiamhT0dtz5FsloJlA/PZVP+ieTDCq5a6Lqkk84xepF+bRAqPdOhyUkiKYTmi9RIzOOIO4PN+n/8q0CiQgH3X3yGIiUZIwsTK9bm/zTKhmM1c/KzClug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMwpDE3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMwpDE3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D43CC433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712299096;
	bh=uk8QV9UhygcYTqEThgTsx7Fqy1KyIgLnFtb+m+7TA/U=;
	h=To:Subject:From:Date:From;
	b=tMwpDE3PEYix46sDKCg9H5FdqpM9EKMk53AEihSr3RIhhioCVBKlvbJOxPSy7ZIN7
	 y+gbp605gxAbcNlCeIeuEqUK9XdH6sEx45lukywEUAuXiA4MwXzDIYTXjA07hwe77m
	 jL/pUZ654vbhx23QQOliG29XVkPObFyaAyYgUQhawFlILgbhY7yK4uXjh+/R8hGmU7
	 VGFcw3P/5+v7gH9iNyThzMl6rJHYSktbb9HU0XjatLc4CKNu10gAlKTD6HEezxJMUE
	 jF+HO0fM1vUFH/liaUNhs/IQmdc1BKssJdhXUIjmniqUITKYRdc0Gb8xP013xbqq60
	 m5R48acPf/c3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C13FCD11C2
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171229909636.6638.8125040363127514385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa05962b3de7fb1c50b0f27765f0d40b112b8b198cd14498c4f3e7fc246ec2a9
Date: Fri, 05 Apr 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712299096
