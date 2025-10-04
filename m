Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100141DE2A5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759602595; cv=none; b=KWrr/6iRkTFtM75us15QcKYbDCcAAq+4G7kUt/p4jdXUdCj8NENQXcVcUnv7464TYZvxc22KJ3IzCZtFECtoiDvO7AXKfju6Zk1KrD07AUQ2RjziwP/eNTYjfc/ZFDD71TnNl6XgANDdpDKoBQWYRuKWH7LJmmrpNGOoAFAkons=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759602595; c=relaxed/simple;
	bh=ASoWkCcYjt90JBH+MiLfGkIfxTQX9N+0gCzI3nP8VbY=;
	h=To:Subject:From:Message-Id:Date; b=bN5TAQtj8gbUo6aZlt9jvS589Q8g79S8RcquLRTBxypi4iLkZXRZm/vWpqgqTL/T7PEfIMoRoaHv0srL0xyHuu0lCjL/UY2XsgNEQM+oR8Jd8EdUbcRQtmAsXrCNIyE25ePY5knsjjZNZaltlASm8OyaX3W1geKEzBOijr1F4hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6pdhgNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6pdhgNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 994C3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759602593;
	bh=ASoWkCcYjt90JBH+MiLfGkIfxTQX9N+0gCzI3nP8VbY=;
	h=To:Subject:From:Date:From;
	b=U6pdhgNkfPIUb9+z0af5BEXWdrPoPSkNwqXIO5HIAvsOr/upFitQdXfcFu0nKigpy
	 h/GIHUAhVmzX0tzJvPCsR1aifUbFBd/oSXeMV+V7ICwjMbKOTuxcQp19vDbI9KwSqb
	 1S3hhIERmKmuX6fK1WS809fp9Q4WNIv8irUplO/ecewb363N83CLluKvrbzjkBj9RN
	 tovmhX3+jYeIH5KHPGsiW738oMfsovN9fjz4nSW/D8CP2aOOhLb2BPgv8CVaVPV5P+
	 +Hl2upi/FmUoqz0tjR5MzH+Zzj0+SH4vY2lPIaU+jAhQYSWmZOA/3ELCiBNdo7He/0
	 x5HqgyaMJZpgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB9CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175960259358.15997.8382488370039770159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adef846bbef76111e80c24ddd41b920c50486af2396169abe5d03563d01fda26
Date: Sat, 04 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759602593
