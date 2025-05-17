Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46783212FB6
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747516794; cv=none; b=pz8VnheIfbp4ioj6cCKxxAcxJt9KfEa5I7kn1uuhaXcVQm8LZ3cE00hilDGk93LBFrE4VjvFbov1Z9fNegjzVNIWJKM5HjZ8B+NRo0hyOhlGu8ocOERowf7Gb6z+88xqIYnazizBiDnKUNHuySbvcZyheV/HKoRAeZzUVr+1gkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747516794; c=relaxed/simple;
	bh=8MRStAWzC1d7Qi4MHKA6kTD27x2uInDf6/U/DkISGO4=;
	h=To:Subject:From:Message-Id:Date; b=YZK97jQJnLYqa58PA8RWLlKTE/M7OWCRA7PIz6UcG2/8xOt6rmG3hMFyhTVK+Cvl8hMPerz5rQ47KvEwJJOgH4t7muGkh2VTMK2hSWvjB2lfqr0HGOA9dWEFx53IQITNJbabCLX1TYKF3YKrYH1MdKnum+zqD5PJpds9DpkYRcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tz/JmPlC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tz/JmPlC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC715C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747516793;
	bh=8MRStAWzC1d7Qi4MHKA6kTD27x2uInDf6/U/DkISGO4=;
	h=To:Subject:From:Date:From;
	b=Tz/JmPlCV45TGDGlsKXWd2uQOeF6CJpEi3i/QPu+HNetN0d11aXiE8iUCJsqfge3V
	 /DlNy4mx9WdA7vUeSzlSVcAfSTY0elNi5KvQ08b2de3dkWAgNgN12YuorufnEvDc6t
	 zjpqZZIOSQeRtCP04/p5nV6NlcST0T1hSqOkFinHdJLAXF1vo3w7D+tWZ3P2fPjCXL
	 etOmZojuPFLN6zNJ/XjhC6bsGjIJAJmY6kVr0o1IbB5r02TqitEpi8eOTWFJZk3Y5S
	 Br+Aiywrswm7tHvqcqdaw/gLAh8Hbp8KfxyEFGipztWrJV1hWsj8fhYlpqgPHhjr//
	 UP6BH0GiugcEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95800C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174751679359.4810.12682493921422343865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610144c9b3ecbf2ca6cc90de927251ca154dc89a64a497fcd122e0d7c67a2ce5
Date: Sat, 17 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747516793
