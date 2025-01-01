Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE8E8827
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735731954; cv=none; b=kh0wlCoMwr8AwNijPF3Ia1VqFyZGVqy2xy2fD2bBaRqiSOvo4zXIs0nHNjwmMOMolc/OTxeLSyM+Xv9H/B54X05THnd8VurRCHPNj36xiRgsqbYLFOWD5UBq5gZxzdYikSXpJw4psQFqKLBhI2XdEwOrBrS2LDqFRwB8paZl/M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735731954; c=relaxed/simple;
	bh=yn3GR+hmfGS5f82t6XOdi8lFxKyPvWLNqnTo4m4QxEI=;
	h=To:Subject:From:Message-Id:Date; b=Z09kI70rJ9XnEb/9o7pUGAaNtE2DuGH1L9ihjpyCZWi6ujewceYGwtpFhAoWJ8TC7dP/hXFu/FVkFb9lrRNnlZer86sxOvcSQgjbdgmxqhWhg/1VNnmw+/EkkJoj1eHAPxlECahdQCWe0oqhGqxny2Setd/lAhfWTvyJ7Vpe6Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxa6oCOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxa6oCOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39F3C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735731953;
	bh=yn3GR+hmfGS5f82t6XOdi8lFxKyPvWLNqnTo4m4QxEI=;
	h=To:Subject:From:Date:From;
	b=jxa6oCOOa0MkeASmceKzpUo8GwTkmZj1ru4oq3heXLqnN2zCsFZkYmqqsrjNDsTNS
	 spPsy/5mg0XXaKVEspQXPegqYn8UvIv6RzphaBEBxpJBKnItH3UPrqismBBGj9Zc66
	 tPz6d5Wp1tv7RKzamfXAvDOo4mJNT4Gu1wOJ6lgqBD5jk3z8OlUsctefdB0AK+lJcj
	 yQjGQygsuLhx1dV31jXs8G+QU9BTelAbucQOgqPbGM0/TYbSl/oPwklKuKmrcJ2K9L
	 rdgNmlG7KcORW88FxPBJOB3ljcuExQalU8KmAkBsrJA0vLpDq7XZ0+Cg+URdznN46D
	 UR5BZtN+rS1gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D17E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173573195359.8612.17485641952336490686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e124de3190018cbe48349c6e710596fb29c4dc725cff30dcb0e39867ea0203
Date: Wed, 01 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735731953
