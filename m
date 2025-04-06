Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD0D22094
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743907194; cv=none; b=NSDOzsZwhvtoRRUpjA/expVVIsvRciSqBDTTeW6Zp65XXfkclJ7oEe3DI2wN4K3kF3+WZ+8D/Xy7aSvhWAIn6O9sWtcVh7OEjbkxHqw410tQYoYNIEHo6UoQfynCEmJLCWhlKnu8RurkEWXHmHTLCY3/NUXZ8Ea8eSYgXOXWvvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743907194; c=relaxed/simple;
	bh=CWuHpZYWHN6gDGacd1Wecjb4heWqasSjtUt2hh/ajW4=;
	h=To:Subject:From:Message-Id:Date; b=nG2nJxXHGmRzMj1eGSUi9dtICJ2lYDqEsyRXuNCVbeyTdq7ArHFFQ1F6s8wBJBIqHSXAsakG/OE+n6He48xdKRTEmqd/WmAZGpAjiOP4OcYbjwl9bRHEtg7ngXn6WEPXtCqFsq45Nty4iUv6oEmE4cUpa7h+kkD75xyGqIl8Y5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ba/YeVOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ba/YeVOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B266AC4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743907193;
	bh=CWuHpZYWHN6gDGacd1Wecjb4heWqasSjtUt2hh/ajW4=;
	h=To:Subject:From:Date:From;
	b=ba/YeVOEjLhCvtsct5uYjQYO5vVMs0V3QR6CJ/Wi/RioMQRqmy/D+hQFkNJDKwYlP
	 02YhRUQm3Wd1XiDG48USb1WtfS0OaLgklZOXz1XQapylnLkb/JOxxxiIYigfJNt2RA
	 Bvc9WYAONa39Ffji2WXT6QmBebNAjs7CLioMvHdcQWrjrAONy5Vgs5U0VU8nWIk6lU
	 6HFEN4wx7Ea3J1rqFhJ8s1oeIJQII3lAj5dfjnmrY3SZMQDJEHw0sPPzSTiv1I3liT
	 kJ59ED19hXV5JSRhzvD2QyAzsB3e5XqIOTL6f8rIT+cHGip7hkt9Vf0SVdRR1YXdth
	 iY/K4p1KMZufA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4F4C36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174390719362.6320.8806826787513191209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cc6198ecc3720652b1a4264f19161d60afaf6f2a8561447994abebcb202eefe
Date: Sun, 06 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743907193
