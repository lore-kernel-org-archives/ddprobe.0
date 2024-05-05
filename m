Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C2E136A
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 02:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714876943; cv=none; b=VI6yr50qp0iVGTPODl3hHQLwMgpmCRugJ82uoxJm3KDZZzOTDLxrKIm7iBUUIqNvqNRISYuZ/nG7QWLYnRTQRfCemdJo7VxFPceIHW0IUT3g+CykFc51MtCuklvF6V64snQiQTC/KvOZyQJ2kT/ZadsFlXFZVqWIlwBNLqM+zXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714876943; c=relaxed/simple;
	bh=V009ObCbr4XxFiitDSQoYUOOcM9BgJVBH6TkdSi/JGw=;
	h=To:Subject:From:Message-Id:Date; b=U332f1F5JF5d8002lU2G+AAwyB8ldEdAImKfezF1U1tVrNr8Sblvh2PzIqLXPB2rCIb1mOpjlvXyXkaBm97wELkFchoeEmNmZT7eEzIQ6jMLN/kVDI5RRY50SXaWgq0CnJX5iUmZyx1qNJ+GSsfryHkHO0TyaCHw22cVofk2t9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcZqdv5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcZqdv5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D367AC072AA
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714876942;
	bh=V009ObCbr4XxFiitDSQoYUOOcM9BgJVBH6TkdSi/JGw=;
	h=To:Subject:From:Date:From;
	b=EcZqdv5Fm5By2H4o1f629W7Gx7cY/FypJwFRrjkGWl8sVeKg6KlNGs/+7vOwVJj2N
	 gBjLaJjtKu34a2OP+DzINAqDBwA6Fv6Nef8xSGBOhRnfMtFALtyMaWJg+wxeNC/mDl
	 DdAb+vESo+65JcE9g1xNDWxt+9tqLJOgo8GzseHuyiX9o4r6X3Qs+gI5Sj1fFVV2PA
	 evnTSiRcOf7T7qfzUcSk59cRTF3Om6ndo3kWlaXgktQPiZzI1Pn2r+fgcbATI4l7Aw
	 6Nav1nAQlDkQHscTk0KsnBJmKLZM6DZvkfTwlrY55M35FB+u+1Y5Z3n4R+HIQaS1UC
	 q9kATpNRtG3cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C06FDC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 02:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171487694275.14029.3108463199126334836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27dc8678a129038d86b8663a4fed797cc274b8ea77d70322aa43443314818ef4
Date: Sun, 05 May 2024 02:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714876942
