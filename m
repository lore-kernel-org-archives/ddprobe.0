Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F69022759C
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742223594; cv=none; b=Z5JX6w4O/oHHw/kX/Y/FhOk4TOSLqjgabtxwgo7SvC0SgbfgarWIrt/0QMIQD+fhzCAX2W4SsOieGBNVySssxeFroTzfs0nTTIUiQbG/3fc54GBCxqZ/8i04LDNI7loOOxJVh45u1D2y+SvuNDmwwhoCwnSA/omr4C6az45O78g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742223594; c=relaxed/simple;
	bh=/QS4gg55zZm0ZVZwyJyhjXCUtTNo3rAohFGTvW/5HGc=;
	h=To:Subject:From:Message-Id:Date; b=nFk+ds/W8qSEamoRyJII8LRsrjpVXF0YjRPi3JsqzY7YR3M+F+IZWPpeUgVJZ0Rit3eQZqPrxpfzGfMskmpEwkLmgZG/X++17Ig3oOAWrhKGuCHB6yJBza8dSVG+hi69Ply2/Aa3xbXz02nti6PFQfMkwBJ2xQneppG0CeHScko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jcl9bC4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jcl9bC4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F0FC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742223593;
	bh=/QS4gg55zZm0ZVZwyJyhjXCUtTNo3rAohFGTvW/5HGc=;
	h=To:Subject:From:Date:From;
	b=Jcl9bC4dRhAbr+WjcVTZzPRQzgOudAt3tHLWmLaQWAiu2lsQrSdjcAQUbWt8oqNwJ
	 9JEBCKvJtptIx09wnBOvdd5ezN2YeNXVE0a0BGTeSTdS8o0nXY//+lbdoDs36jPLK5
	 7Eqb5UcZX8PnfqEQzP8tYbrWm8i7beFRMdU5xxRXB1IL8pmZBvWwthh0Dq4qA8nJPB
	 kVRdsam/vqK7vVAOhlWdeBmC3zqxZzH4YTBjiig7bfUW5O2zt36V8orn/xGdna8xpW
	 3azEG5p6xnoqDxU/f3Y7NQzSLDoS8T0/HH3Vwx6ADjo/fyvsC7iIyHzXcFv0GIja9F
	 YAfr7JR75dUVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55CAC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174222359366.23725.17545379507768435728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557b569a451a11ac71f472b0951e4bdd417d37ca265be8073f50d8ea4b3829e2
Date: Mon, 17 Mar 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742223593
