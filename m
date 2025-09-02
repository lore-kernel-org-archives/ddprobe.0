Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5431FE451
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756790994; cv=none; b=SnhG8nKUOxrId6PBm5T+RBJC0uaVCDq9T60RM45h4AAzKvfH1e6wOXIqI2FCInYEmKpMIYwv0xze4gMTDsQQ2aGhRhrpElTaTb+Gx7R3LoBIYFhitc4TLj008EXYYagCQn3ptc1ExcmgPm1A4Ndj/FD6+VBmhzw/5CJroKdMvUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756790994; c=relaxed/simple;
	bh=snaJEOlGI1Ld5i+so7fW9MnOGnM9y/DMcWJdklaREBI=;
	h=To:Subject:From:Message-Id:Date; b=eJv55fBufNdqJV9MG/LwOaZ2AFjG819oxn///mXikL/iO8I5pWFrvbUN/sui6hv5ek5TzeJyv7QuzVt0DyMBLtauRIjG5m8zFFP1PsUHEJSnx/rZ+SKZnJhWBxTk4MrPFTNLpcz5XtZKzwY5bggfIw4/M8lY4w2Url54laY6jso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMzcMb+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMzcMb+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A258DC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756790993;
	bh=snaJEOlGI1Ld5i+so7fW9MnOGnM9y/DMcWJdklaREBI=;
	h=To:Subject:From:Date:From;
	b=iMzcMb+wovfwCjUWBOE8tZRlpchyGsWyURkxS0a+pfQRWPLF67SQbP01xJnI6H8qa
	 1sBIQKWM56P4pcAHSVZndOnoGZTue4Xr9JH5yzMNlK//U77Q2cMIypHMR0aljGHDX9
	 Ij7MMn/JpqtD/3DDMpX7nAF0TIBFEhcFgXzhKw19KH3TJC8h+5fh6t9r/AJSuBLY81
	 wt5Om2Rnr7sl5TYeAgxwFKOCjYgzP5j/tPa9HL/q38ino0WdyqrB7XyWUtTvl871Ml
	 VySkctLx8T23Q4Myvn8xerx2DYB/UZhGENdnQUwunXJGvLZoyKV0tJEEu+UY3pLKLH
	 8ElL8JPCooWEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB6CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175679099357.29764.17815879527348650796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e369d9d443fa21b26369ca7503419f216743b24c4b147d39d47da14ab59701
Date: Tue, 02 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756790993
