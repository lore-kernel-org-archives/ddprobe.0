Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAEC3B1A2
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 12:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735390554; cv=none; b=G3Bz4uTtAWL2W8VpNM1LeZgGgX1WpVQt6i/e+NUK16g23x0VCg7bkmUsod7vu8ewoYPcZNeIUOJR4NiRXMDi6e3AcyxVQLFbXm7RVKXBwUMi9gk3kgwdNj4z8CFjdsY3/D3S/dN/+4Ed72jDudu+olWRgjmTXceqex3gGn5JXYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735390554; c=relaxed/simple;
	bh=TbA9l52rC25Uy1+3mo6lC4lIKjEptUam1iTzsVMoCWE=;
	h=To:Subject:From:Message-Id:Date; b=bByUG2JcvSsUUjwYj/7PCnPJW7IjqvhoHzqoBDH32hWoVdfk5yaQ+eQHnTGm6Bg27ak1czELXtKstq5EZMxdDNjNh1GnjptEmUQaZvLrc6mx48QUyTxcsnoF9POpSFBX1Xgp2gPpPxwaVaXkNxmaMS6M7VQl98KJCdRbsCV1xWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1fPvKH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1fPvKH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9445C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735390553;
	bh=TbA9l52rC25Uy1+3mo6lC4lIKjEptUam1iTzsVMoCWE=;
	h=To:Subject:From:Date:From;
	b=R1fPvKH15PLqDpAGzwFHx54lHEKd1qnDd1Jt/GtkD22cLmytsov7R/cQRDAJgUYId
	 J4/UwdpUafZYRJ8U82n/XZs01RdnWA8p1PILRkokWaibbIaeeCk8S/xTG38zjt4h/G
	 wSPN8fSeOefjwDM6kp+LTTMtOFZi11XCWeeR7XP2eu4OuN+MPssItczYXxVjSX3mgS
	 WdvLEq/oNoIBGJyYOK9JTK6EFHPXWQca/fKIn6e5W6MctfBZ/ZvRJWp3Fm0LQsFKD4
	 NEanCsolb7v+wC5T3pDykFTirLaw3kTc/3F1KQoJSLItqoQQcl3nunsxL9J0+x0l6i
	 j8c72R6UrjCww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD0C1E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173539055374.3207.14439002560942207794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1206e789f291f337294c5e0a7e4de6eeded92dbc50db6bdf2f0a6c040e68800d
Date: Sat, 28 Dec 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735390553
