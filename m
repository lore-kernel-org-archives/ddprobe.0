Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F38115A848
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747510194; cv=none; b=lEtrmw8aT0ANCozY2fQTV2O/eSWaZTia4/m6Nn0EPWpEpfjserc/XlF/F2Bu1a95WV3m+8ZshdjaHkkBInPmdpjH4T6tmuOY4UoV6DJ2gPpsKlBddEvG+qgND07x2u1ThKwFzRGOTVAYw3xOMjK+g9XEl2HF2UEaon7BSR4o8tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747510194; c=relaxed/simple;
	bh=0ZttRsTlvtSzBIgCJMZvoWFEMwvbROVYGTPzy2DNPAs=;
	h=To:Subject:From:Message-Id:Date; b=gbMxImozeICXEYEDDleoB0VrDY3qe0GmUYuGnwMBS5ywsfhP5rGdj6KFp2JafgbIy/4wOzJRo5Rulo1C/SVkxUI0bij4h+MAZ51IYCLX4E0xgBq4vB2Lk2fARbSGiYTTRg4iWzjWt7KuQ63BCdYqc8vzI8ieJ61gJQqILHAM9pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ijff+Jth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ijff+Jth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BC0C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747510193;
	bh=0ZttRsTlvtSzBIgCJMZvoWFEMwvbROVYGTPzy2DNPAs=;
	h=To:Subject:From:Date:From;
	b=Ijff+JthmfFc/2geTaRBHVOqh3wUrr3Xw2Mm4N6qF+gImy7xrw58LrvWwjyHs1j9Y
	 mYmKgeAdf/WyOwZne6YNbbkV41XiynbW3ZI9tvPZRVjYaoIPGQ2sQGzHu3qEw5EV48
	 HmNq9AdPMRNe1G5eNfKdlq5liJjLx06e6LK6LuIa/+3JjuM5yDPsz2Xv+/oSzb64pi
	 Rp7VDQpCD4/EhSGveaPknIEDOQZ55kW+Ln2F+BVXlm9qqXcgT6qsiXqc153E/KzHrE
	 jMRV3bo7gPstPLmhWr7jLITpKgltTqfoq8+ceAXH9pzl2VMrhbmzZmUOiVxvH8q/uA
	 HsDd5vzdqm93w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFBCC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174751019357.28815.8106172007484635043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77778e72c7ef056353c7e0ea3cc44f1673cfecf27c0759555e376e2229309247
Date: Sat, 17 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747510193
