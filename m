Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFA446436
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717448123; cv=none; b=fpTBPpzzXEiXbYBLAlH4ETOKthsFjffa4wcuHstlmrYdgM+vSo8wPvKw/2yzivAWJejERhNEeXNKrGhysUUOmS0l95uB/GyvD4wN+qVGb1HZCiqi1O7cpX777VITUbn3Cnc/YtPsmvEFDrHW2QL8ENmQZucxNTFrNViJ6KNRVp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717448123; c=relaxed/simple;
	bh=BIwjE90LRI1yXO2dJLx6GewUWa9tft5bzxk4WhSpNnk=;
	h=To:Subject:From:Message-Id:Date; b=IeUhFJ3Aw/7oyw74zsiKFz+BvuXTiemJSXvtbhkPw0QU1+QRzPAGhcUQg36hKGnwngM/grt7sZRGbCgINiC8o3oejiKz568RlPcMov1lH+tgzsm0yOkBgI4RyRd1AwXJIXbQ4fQuuK/Oxon3wSt+TtQx3u70thorJNwjAkrpO/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnFwkFqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnFwkFqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58C0C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717448122;
	bh=BIwjE90LRI1yXO2dJLx6GewUWa9tft5bzxk4WhSpNnk=;
	h=To:Subject:From:Date:From;
	b=bnFwkFqNJmYISs18dgUNCodFZwyx/h6oI9mWjcSsNDOJx7b3T2zDwN5Y+Jv/nwvnc
	 /Ib+cjgdOCG2rxoJUD9DOjo6HGeF8lfm50OWxqhIq3Whtrn+rM5WSOSlmzrR4Dg8OF
	 phG84/SzUYks1c5tjl/MYOaUhKA8FyVyfKyzh55Uui//fv5C3VeZ95YeGC5cNG6zLx
	 I09/IMgbBib3vAbFhfCvv3YdeyYL1AwT+2H1jS0xjAgZKePz8Of7gTWMGdt9r6gWOv
	 Qpu/eB/qOmkslpgJsze/kk4MMRuAc5h/tuFB2sKqyRgA9zB7gG9COoLED5JEpPMdNb
	 fkxguHxoxL7cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C094DC25B78
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171744812277.21343.4784448941829277967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffff5e2b8555ffd21566ea836b88c956c3b2b29f841a241fd71639a971ea83cf
Date: Mon, 03 Jun 2024 20:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717448122
