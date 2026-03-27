Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03541126C03
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774622694; cv=none; b=CLabPsTmS+SYGO4eVRabbrpbeT+CJNEFZVHgfaIJFFgI5bafDBCZom0cJr4PO7yGYWa6XUZ1cZqWzFdn1yYJn7QFqPzKhDZXHGyFbf9KVYoKanPY1bmitA0So7wKMfLhEqj9CAPBzihrrZ7w+Ar75cygX0y+FYNi/t4Cs8lt+kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774622694; c=relaxed/simple;
	bh=59qDJLmnoLJgwbYwSmPW27nT0zMgN6bh9umMZdFy0vA=;
	h=To:Subject:From:Message-Id:Date; b=dRPmLk9ElrCkTOE+z4I/ULYpxQMmikbGT652AS6kSn4U7hvhlchUdzK6BWNWgYeYdPUkpYd63xtRPmFjSOC4Ui0D+p6jnAkdagCZGQvFo7HKk08lTH+nAqcghwuU/7xfcgU0Ui484YYdLyWavaikK5FT4UuIX295tnFudMpbcJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVKSErzy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVKSErzy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A83C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774622693;
	bh=59qDJLmnoLJgwbYwSmPW27nT0zMgN6bh9umMZdFy0vA=;
	h=To:Subject:From:Date:From;
	b=cVKSErzycWcVsLYZAzp8hCDpUj6SZjRvFL9YojEUWcXMlHOZ99Y15K2gPsh6SIX/I
	 rOFtGpPwAMY0BLOKitkRjYtGm0asCMy3+Nv5/3uLF2QvLcWVM4bEDTz9g4jYqgWowz
	 wVhU1HFnImVb7DLeTEGxXyqLfdKa6JOdcHhnVqYdyk6IjLRWkvNzDOV4MqrT2T934O
	 A5ijwB0pJ6Wz5e/QoYmcWFZ0wzl/JkzkH90i0Nu0iifrGAPoo5p1Ayee8xoisuRE3c
	 02OxbwXNL/Qmz7qklhl4MJbj3QMMSxQFTY7i1E3Ha9iG6O6/tgzjKVRvC2Lkihd/EU
	 wp9Rbi7L251qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E1A10ED674
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177462269359.13869.5523018506345946715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5f9cec9757a419daa7ad60aab89aa9c0374d89065006c9788e0cc0d46fe5a7
Date: Fri, 27 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774622693
