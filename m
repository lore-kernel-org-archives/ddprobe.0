Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F0917D2
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711837097; cv=none; b=cK45sNEu1p6VR2QaREq3/IrsOjZFsgga4bzuguQAyKuK5RXh65JLZZQmJDa/ZP0JAFCb86hXWLKd9uhcd4Byl2wamDYUWWKKdDZGHPBSgZ/MeHXI2pW4VG9yF1uxsmPB32+RSCVUiNz6ErqywmIx1MRldadzbqN7wZv3rcIOZO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711837097; c=relaxed/simple;
	bh=bfkXp98V6RJqOYenj/4ixpHDWq9dOh2itIeX37cMxBk=;
	h=To:Subject:From:Message-Id:Date; b=SnwUQJLIClRWsAQL7PZfvdtPCtsQBOU7yzofE6O6coP8v5wtFCouon8COJm7QcvMx7GEDnMfFwKS30ay1baFPMHSsWPI/bohc3U/4m+nDcuNB3KckA4MJvRDdkjktpHxpztMuGxR4pKl3SLmYBhpB/MfSIX9nG00LdIErMMDaDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmnJOjJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmnJOjJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ACDCC433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711837096;
	bh=bfkXp98V6RJqOYenj/4ixpHDWq9dOh2itIeX37cMxBk=;
	h=To:Subject:From:Date:From;
	b=RmnJOjJARkpSeer/tc6Ib7kFI4platan1mxnULG1zDq7305ZFsLzfNdy+pPZ5S9ph
	 1rJqPLLNVLJROwC+hL/j/oQhZ5HAyKXFh4/dX8AwEzyHg+sZPhqfzZ/2F+0Y5BSpaj
	 JKOpqDmXoO4Y/cccoWdtsvWdGPEepaZnK093hHWnH998Xq0w7bJSGSpjc08BamBNTg
	 24ZYYAuJIKR2AHLKaJ2H/xfAq6eVBGS48J8Nh18/KVP9S7JET1I8Cye24zfHxxkNAt
	 EqE5BgbU4b6heDSR9LN/W23+duVQOhLRt8a9U36mPcxQu4ZYTn9WtXGndX410s7qUk
	 BddqGiXHrJoEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644D6C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171183709637.9954.4222660641494156665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c11e43b6d82c9abbdfaffe58807b8da28bdad6bcbe815474619f3045b47ad5ab
Date: Sat, 30 Mar 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711837096
