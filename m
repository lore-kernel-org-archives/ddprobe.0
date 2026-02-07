Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F86314B6E
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770452034; cv=none; b=eIadYx9Y5j6yqcTPCEaW4Flu2Curynuba6T3cD6SkwuHC1g0quJxhxSMel4Z6uUNnviNGZHLrpyb2MSYfGYA5acqcZgsX5tt8hkxTlysbi76hl96K6D5rimi1SOfPB0k2/NF/lEE+T9pcKfWcDVpYD5vbcAONBBxEWCm4GXOhU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770452034; c=relaxed/simple;
	bh=vWPDXLAU0dtAfi6keBZalyoEdjZkHHNsUOVVqWkwGks=;
	h=To:Subject:From:Message-Id:Date; b=U2ILDcZXj19qcMbbZqG8X1fBY8Vl+hU3wioAOTfYYn/qc7Nb2/bHKYIUDVmlGnIzi1swGOluc8c3sKdlXiWsdQ1f2LrRWnzELTNm+ONzqjRnGMvOpBf5rGW9uvv4N1X+ovQih6HYAWxw4yHmPYmZ6H3eSs5XroL0quH70bW7uyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMXODgpI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMXODgpI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E7AC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770452033;
	bh=vWPDXLAU0dtAfi6keBZalyoEdjZkHHNsUOVVqWkwGks=;
	h=To:Subject:From:Date:From;
	b=eMXODgpIYGKaVnr6pWZif3iKW8By8Z8dbLWHcq5jVcehjl1JcDT4Fxh0DqlWl19OV
	 nIXqzp570WONpYs4mibPf046wnvLHeKlu5sgWe/MZzLcniLaWd+D6GFz69cKLMpG4x
	 nnLnpxUgIRCCm2FkU62xUgnIuVO5lGkqmj1e/VaPnwMCSawPweUMISyLR3truKg0Vx
	 xJkZmTCX4QnD71ogVw1kf2F5KK3uvE+rnS2ZI4P/C8S51N4p89FjC9XQuJlPW1Dmwa
	 tYwxJVc2EVTvrwn9iYAWwB5VwxChqVcZVeeGR8Pg82cdgCzL/fudQRH4nqnD/+ocZ0
	 FWWy8kQYGqAMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A1EE6B76
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177045203358.21149.1782339050762540213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22eac86825eae514779146269614a230c01c089cd41f749625ee1e776c449f6
Date: Sat, 07 Feb 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770452033
