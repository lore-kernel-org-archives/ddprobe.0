Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF02B13C3F6
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747239593; cv=none; b=Y9oYRS24N2M24RwvaEgd8sKmax9HOouJ2QfoPWcrVK5fZgiT/yqQ6FjkY3Odoe2FXxzOyUCrvm/ET3IzSsRFxdgpIDCJqsEYPNYQV5e6wOHpa0MeqWRUYif7dbLYbn2eCSQgY79rGU6F64RWHcLKukhKb7yFxJ2KOSkA9cs7Uh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747239593; c=relaxed/simple;
	bh=cF8//6mlgLGQz4OdCm3E70n5X4f66HbU0s1YF5+X0oI=;
	h=To:Subject:From:Message-Id:Date; b=uR09pW+yW5z3Oo7n57ag/LhITA17mHkOYZMed0H4NFPr9kAqNcDUTYZ+2wT5J/xAvoLzpQ9qPfUyX+lsUhT3bX7pCxjg4mkySImS6YdEAJi2JYibILXh9PLSAX9DGJlHsz1RmIo5YdYefVBgVg9j5MTf6yNQiSdoTY41eCaelHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnBOVBpP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnBOVBpP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F516C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747239593;
	bh=cF8//6mlgLGQz4OdCm3E70n5X4f66HbU0s1YF5+X0oI=;
	h=To:Subject:From:Date:From;
	b=LnBOVBpPmNA1pcCtVlrW5G6yFJEOJEXfW/uhyTpMtlOVIiETIydFy2E/+nsXsQ022
	 9acOvBHRmkYYLhXndt4Qvf9Vlw5Tz387I2I6DkdKCed7d2YnSlIQtIxIyPs66FEYRM
	 kehtVHd2GlEkdZ8Mv7vO63b+g1AdLTKUCM1vKy8IShuAMtEbBbf44+YANbcLROauOy
	 mBCr/5/yjG9+475WIsHdUjWukxLrNYTnhCrrLT7OWPQSmCIvQ3EaakEWsUd0SFyhjS
	 wARH5Mzu7HKGYmtRIfzHTwRJiVmFObdq5kV2y//Gn3wP/q0+n2wy4fuFyZeAchifQe
	 BZbkxUmINNQXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F858C3ABDD
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174723959357.24027.607675679905266697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d741c90887cc24fbf3d848990e83c0c47bed855834b242a1bc6042ab17d3726
Date: Wed, 14 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747239593
