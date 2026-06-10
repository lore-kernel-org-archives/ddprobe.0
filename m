Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2699430F52A
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781124394; cv=none; b=Ah+GxncenAD2TET33Xjm/28kjD5KNLgIO0yy9/GMrCo72aa5Q5YRP3REEtEvRKFLxjOyGDlFSb2FQw4AXAq/Xvqqly5nMzgbnbhUe/XY3nH3Z2drloYaxbumzaljhdYcqWrz6vaBoXYUAvk2+hCMAXU2Rbw5VILXzzp+/j/DFWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781124394; c=relaxed/simple;
	bh=Wb3+fcTNp82/71iyAa/JWfWxNuK/IEkbq/8IXJUsup8=;
	h=To:Subject:From:Message-Id:Date; b=mPjhBFHy1qgyox+KTjM6Qf6VJ8TNwp4KCzPxNP6MWEegOosiw7i+Fw0p+GUI/NQbSu0fGbgBlgjnkEoAFXO35ByLcS2BTwozF8AEd7nXlRqbymLPr+jmetWpuxo/YKfnMIXFxvyMXErpc4F46HtA5vrQmQQuAoaMXIkTK6eN490=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7L4vXb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7L4vXb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6952C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781124393;
	bh=Wb3+fcTNp82/71iyAa/JWfWxNuK/IEkbq/8IXJUsup8=;
	h=To:Subject:From:Date:From;
	b=s7L4vXb0OKC8t2LcLGlc8qFDq/qi0Cm+OXOXtsElxqLJsX8Twp1+ES7F4nCgH7Rgj
	 wmzLCynLcQUs8mQmb2k/lzE3I9GqKMBOLexYzbugLrBiH52jlK1mw7VwCAfSm908mU
	 qgH0NmTgzKrmF1o8/xuWdA9Ps9Dm6TEHL3Gu6ehmm/o3V0zq9OErpygsOkTfsjmOnr
	 7jqkSdrHCegR7YSd2PyDOWprc+MTED/pOTEfZudv3drto1ZjGe8SQwKm8Swew6/zNM
	 j4KmQfnC+7ZmbAg3bHA8n6FTFwvU7SNrYY4vCpc1qCmB/maPXhvq40Kp9YWQEj3KJs
	 c9H3kk2+EFDpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADBECD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178112439369.26041.11589626659883174790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae00cc415dd94316d7b3c7ecba901767ae40b286f8ea67d574d58c09ffb04bd9
Date: Wed, 10 Jun 2026 20:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781124393
