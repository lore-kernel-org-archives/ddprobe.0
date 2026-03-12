Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030153FB073
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773333894; cv=none; b=FQ32qDIPP+dl4BZhc3XjSrLZHPc4jXBnqSR6DV9wb6kv2ssFWfjQPaV6vOgLXxSf8F/l0IQZphmm8HmwEJuysO3g+1N0l9SAXqDACizFOs9nfZlDFVNc8++YYN888No0wOZsMKoTgVZb6oJiY5cuOylr02bwmdY6OxdXtKHUoro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773333894; c=relaxed/simple;
	bh=tZjksVjFApVtAIqmRgAb0Pcbvil1HnA7zROhjJE0HNw=;
	h=To:Subject:From:Message-Id:Date; b=lDIQG0/f1eSR7Rrra6HoCZBK1vkZKiUcPhw4PvyhsnRur+emt9RVQKOCsPgciq7WTKDsg7nMyVIEJuvgB22sngoS4tMY+IKsLvvEJeRcfMoHjsebCoavyA+l/rnzr+MZ5g/86YHZ+NkQfHq2ioEH7X1KEyfS6G+Q4WBqauonZF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNiVEEsq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNiVEEsq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46CCC2BC86
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773333893;
	bh=tZjksVjFApVtAIqmRgAb0Pcbvil1HnA7zROhjJE0HNw=;
	h=To:Subject:From:Date:From;
	b=WNiVEEsqL8eo4M4IOwCjAEnuR9pp4dFjlMKK6KSTNG0s2UDMMQJimy0mV9o84DzwZ
	 FYMP5QFXBWY8h5/inn26WnnhKXwPSElIharYLY2MN+jzMGsfIAhjGXlawW/AMAmpSr
	 7F8dHs48ZBAk16JQPO2/dOgcCj/BNuDv5KlJNIrM3y4U3Y1JB7I7tFBDBYFj9iq21j
	 vaSqZR6diqfxKWMD6baktAibUQ2OPv7a8HWu4FxzlEXFlRaoHOEP/EqaWQYq3rdK5Q
	 puy1daZ8cH4kWKlm9S/r7S9+hVf5TgnmtVsv4GfywDGqHEgp3VS6J9mww6Lw93xiQq
	 7o7BIy9L0iPlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96062106ACD0
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177333389360.20726.4001322402521648825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74bdf42693e39293a99e56d2bb781ab1a31de38efd1db991a92032bf5a466da
Date: Thu, 12 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773333893
