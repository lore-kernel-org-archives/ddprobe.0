Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4043ACA71
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773747294; cv=none; b=YcU/y4CP8jQL9wS9rAZB8lfFL7abIyUhrFNo0+7/xrj1aPQXHQbSJd4EoiYguL0J3Bdl9YiKooIAAVjAa9RaXYuvC9Cj0zMw8GPZdHijsd2y26z6+4Y4Q1GMuDVbQnWCYTYHKN+z0RXX2zi9pd3u+4ZB4dxTkKLUfFcF6RiEXE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773747294; c=relaxed/simple;
	bh=P8bW0q1sSgyM3NchiEFSsXviz/9v68lRYUxmVwtCg2g=;
	h=To:Subject:From:Message-Id:Date; b=Jt1cMEjup70cbDNTmKqZf4Y/TrmPV+8hcA4R1WzvMe/Bzp8lRpXcmNIjKAWJg8TKW4b6pGg4NOEPztH0zPppKeEXnWOmyHr1dbLWGVPqWFpcW+Or9mWkiapQOAMZ5q10fs3RztBoWS/ays3oOTa/Dw8a02lPx9vI/UVM0e0KKcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fns6U9Gc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fns6U9Gc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E343C2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773747293;
	bh=P8bW0q1sSgyM3NchiEFSsXviz/9v68lRYUxmVwtCg2g=;
	h=To:Subject:From:Date:From;
	b=Fns6U9Gc1cNZwfzb8Wiu52a3JqvGsnHuMDs/AmHj5MAGFPi3k/rtGwoMAHWHSjwV7
	 2OhTfRp2e7XQM+nuv4PIxxiTUsuw7+TTC62QXLjIMKWqweyTo/WqhQvkKJO0v4QDSu
	 a7lAkYxwXIaUMA9FlmLpl6cXsS2ZkHdrGWf37QZccpMA5vgad1lfWDrMS7mcoO0nBY
	 03Y5MwX7QcmsuZDyZAeqJscK3SnHVrJg9whFwx0gD6VgnZx+a6CRwd1Ft8W/jTVO2k
	 3BLL1//jbdyO/GC56tXD1vD138fSkb+iFXogV/aiQDL9H1dFOKJPQ1NC6wdgBaSb/G
	 W+/TMGW6uxFhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF17FD8745
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177374729357.13084.8846268548746400710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6e2b029296243d8d4e39f1a3deda248c144f3ce44f273fc46db38d024d860d
Date: Tue, 17 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773747293
