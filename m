Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6371F75A6
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765383774; cv=none; b=RkjlZDsxitXjcrtlhaKhqnmLu48rV1ZDIYbMiHPxA6rq47X1M8Nv2SjgR/ceThomieCN3sg0q5gAAEv46EHhFC2YaneMj4+V4J6gBd0LzWkWf1z79bl9fmGv2t6IUzfqxrLaK3TMuhDTGqzoLElnw2gLEBZxa6cq4pTHaHbyK24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765383774; c=relaxed/simple;
	bh=U9WBl3/fh06m/dGYeYQuftft0obYL0yX1kPAh666MD8=;
	h=To:Subject:From:Message-Id:Date; b=czIRLPyOMpUOpQ4v2ed79P7xmCnqHBEzPw9+4vh27Zh9JYJ/EIqpPzSPymDQyNVqfb1MdZaSrSon56YX/NI4kmyIfB09VoDf7Zqjc/mBM8fV1HCdhl/xUjRSBj87eZNsfDXhsbyLCSUcGQA6KE6YlyXug1DxASVOzgdq5+ZxD4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJ5p3Sxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJ5p3Sxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7ABFC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765383773;
	bh=U9WBl3/fh06m/dGYeYQuftft0obYL0yX1kPAh666MD8=;
	h=To:Subject:From:Date:From;
	b=dJ5p3SxhyF9nMgNoFerdGLASbP1GlkLyfOFy+jUmmgcK1asnwr+ihjBVVU3hBvJ+v
	 jMUB8xz9SKdwiNrym9oe4+OHM2jRjXVUEYmACMfMAxgRGv7oRAKIphCeq3ja4EUCat
	 vSMl0wi8Ax2QKSr0vUDs34KKGKhME3csafq0aYARK8IiJETH5VYXJtK/uF5W2irOBu
	 Yur54/o9wEn2rOOYmb0yzrLQnA5hLT9SUn4QzUicxk0qurwbJLVipgi3G5gP6niLlf
	 /Xwry9H/PN6LNqd0xmbn/xGQnUqyf19p0Q49p4MywVwGs7/zqbzonm/+KndAiKgXul
	 Pdl7LvhUULfbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD09D3C92C
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176538377360.21237.13219674806668617888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4365827588e59feb4fbdfadc478e268e3d5759726281870dd0977aab351a3f36
Date: Wed, 10 Dec 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765383773
