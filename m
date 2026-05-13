Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F46013D891
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778698834; cv=none; b=YPKBE4/yl8rzNLpC9SrVETzBBe2qjdF3h7e7fYMG6IHtTtKdzjhMS7R0qR3VY8Kbw93y2mChclYqdh00X5PY3TjSD2sDjGvTSp5lIfkKlEVIs7jGlQ3Y5p7i6MRCAw1vmPwemMZ7XxxnzMvmE3iwW15Z4y7YMK+dr21dP8wv4Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778698834; c=relaxed/simple;
	bh=iqXYWqEXDdzujZIsPueB4KKEb1ZJF3hASq8DjHGh0qo=;
	h=To:Subject:From:Message-Id:Date; b=V876UXoOO1wlHc6FF1i22sj/hoo9tanvcpIC8VVoTVLD1b89tJJSOrObHelDuOnBd6lMLYRhEVAyly1c1j49Piye28ECsHeFSd5XUAFaDICnWehaQirwHIX75HZYSRDd6RPN7mJKTU8AfXa9Ux/jDKKrSw3rdIuUMRtHQ+Ioz7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHi5G2vM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHi5G2vM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12D6C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778698833;
	bh=iqXYWqEXDdzujZIsPueB4KKEb1ZJF3hASq8DjHGh0qo=;
	h=To:Subject:From:Date:From;
	b=uHi5G2vMkTeg1b8PZ6QUZNuU52Gjae1iHchF4JmsgpL5r17kej5yOdY7dWWzKE6qu
	 C1JPBqwGPnmN8LjeKTFW231csf6+Qv8FmQFsRkIhI/6qF2Ok8r3Naaqxvo1NEtuahe
	 wO0/OYZXGDLqI4w20RGif5O4bX174Ifi5xfsqgbqOJWMiTwOw5W8P+ARr7s3nsU5HS
	 vNKFLdhHc0KZMUr+Ru89Dn7YgmGWVbCPsUmMmXvOJXcPPeI4m/lEiWXB05yRZro0W2
	 9RfPX1q1v2oQg6b6NWBzgQ68cmRX603so4WNBqas9M//wZZ1vnlVJdoWBX3cHkY8xp
	 p6NZaPwCRiWAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB2E5CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177869883375.308.9543443000171397501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2817abb4fd7fd6150ccaf52dc92e3dcbf7990975ae565293b531fbcdf58d794d
Date: Wed, 13 May 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778698833
