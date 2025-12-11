Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94C241F12F8
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765490574; cv=none; b=XiEBeuirvQEIApO/B+9PJ6nlv6M6tQO+NtG9tGvv6cD94Ts73pLZ+Nj/YL+IOTE1nApF0J4bZ8O+PZDvBb+KOjoB5YasVw5ax2NnalSLIQKVPT0saw0O/jJ8lSThQvgi1v95xl6YVCztCu8UDJPKVVnqivOFkAzYGJ3D7IgI7KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765490574; c=relaxed/simple;
	bh=DZWs3IlWBUpSethSiBw2HdW5z8hON21jkhrzB3+S5cY=;
	h=To:Subject:From:Message-Id:Date; b=iJs+TCiecgZ9GtSltFRe5XsuYF2QFXcDs7yVBfIQqyUqUFLDp5PEUHC8Qc+PmbIWYh8MLegjhJ2xOVnRHSJ+NS5F/h/g2qqUCTQSb0LXuWyqEXMCzkLyDHxkQl+5SUyZGfJl16ts9DKiRbAvN8+vBeCMaHQqd9WvKB1uiE3jFgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZoV+Dva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZoV+Dva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2ECAC113D0
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765490573;
	bh=DZWs3IlWBUpSethSiBw2HdW5z8hON21jkhrzB3+S5cY=;
	h=To:Subject:From:Date:From;
	b=aZoV+Dvae5pWplAK34eKwB6Xq70eu1JHCqBwHB9yhfY8dPlUqKr6h/mjgCMaso393
	 IgisVPdSE2v6IP14DRDBXjDC5uhY3M26Li2mC7KXDi2w0bw82aZWVQbgUY8AME8p1Y
	 fkpqfEXKwRalKfrRRnhS7IrD1bEjZf1CZLPfyjgG0LHlLsOZ9HBHi5dN+ZI58WbYGX
	 9bJG89bsEaq1umK1c2yb0pbeu7SQOgwCByDUfFEb6XXboFpsJjq024u572C0HSdmDp
	 ZuxKz9mxir0q7N2GR3DM3uOy6MwauvUWlFV5F1tW9coz3v2qHASbRPPHygU3Jq+yZP
	 JB6lfq1pJN/nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF61ED43358
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176549057366.16572.2371759415622211157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1367d6ad7f0da09fac4ca7ef3f0c56ac8ac533a1a042f3dcb691358a64d3e9fc
Date: Thu, 11 Dec 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765490573
