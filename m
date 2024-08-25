Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DD529CEF
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724622354; cv=none; b=Lc8UP+F/ZcCF1/P4VSO1Vj1XP3xmNwuKiDV05zaN6ZgO5/1XAkXs9dvqbW/QHQSB5wux6TXlMO48aPQPkIyuUKdVBM8mgarddEeVccFeAzZDoLNgncWHjyTnfaxEf1V5CyrZW2MBi4agt/HBuiO1xYPJqYVjbzWD9gblcQ7BqF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724622354; c=relaxed/simple;
	bh=gObITKWcGuH9+fTqj9r3rz05MJ8LTvLbdhTR50TPOT4=;
	h=To:Subject:From:Message-Id:Date; b=KefOI/txQv3M7z6XUGoJGHff3XNITV20Z32UeRyzKfYHZXMW+JQ5UqWtv6oPpyFBV1kFj2m7DMn4vP7hOgaONR0UR7KNCNZgqXGw/mcIRfw9wV0UQwFWogXKqR6M2/9h/lfyZ/mBJdiKj5IvKUkOlld33jdcJ/AqFkjANR1WMzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Un2yPV5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Un2yPV5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA771C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724622353;
	bh=gObITKWcGuH9+fTqj9r3rz05MJ8LTvLbdhTR50TPOT4=;
	h=To:Subject:From:Date:From;
	b=Un2yPV5w3l/fiAYZLR/WIKOjNDQ4ExpNfh5+A//2pAH1OsW6JXzHQQcxUoI/IBXIZ
	 L4GpsKVfVOKBTYCZq9G6HsFIbJMuE9XWnuW1J5dw/OLw8UEEkUyGrGKDaRb2Se+6jf
	 oT1BeLS3i+1QJCYJ04n4ApDnHbY57vfHxPZAZs7LjDC+aV0xlnyGikbOGujIJHPdnR
	 C2pUwvfnWLH84rohEIY+RIutNuhZ6w+5Og4C9MpP7tFg3RigLhfAI0Q4M4JUMWFgWz
	 bTuGnxcplWDcKxyJDH1MPkai221XWUJ9YMomAeu4SBk1d8LCxFE3whvJoypr0C/1d8
	 Tz2dmvuDvCW+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97002C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172462235360.6361.9650857810130193957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8853101815a54f877a351737679d08127a8e3192969ab33957b10af8e3618d8a
Date: Sun, 25 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724622353
