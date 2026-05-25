Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB6C31E83C
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779697354; cv=none; b=uH8ssmMn/JCkMXSBM1+Be1Ti1+VGmhbIwSOTVcR0C+YuJmPoHAChZne0JFK0hmKDHUJjLlTMjwL2OEGUYJINfYBeIDIb5H1FzHgQIU12V/VVYD/eGr6eCnXrEYOrBQazQM2UoR8AiSouyfYFVJW6P2WmW4l82CZ98EsrgfMqoSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779697354; c=relaxed/simple;
	bh=H83yZnRqvZFx8XR2JGAVBryXQ1wkAVgfRZa2wjqszSk=;
	h=To:Subject:From:Message-Id:Date; b=ntS7VRqon3I9FrQcqb1fJ/h717zbtw0o8m6UdtCsaB1OgVGyT/NksjuKCA7tr03uEojuXq2TGOP//I5ER3yCr/mrniX96psv8En4ZdLXXa6ssiu2Avnu/HxIWmkOe7PCGe37TQYvy0y+/tdHPOYB6nqrekkUnXIHsFQcG5er91w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oa0PYj2q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oa0PYj2q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD8BC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779697353;
	bh=H83yZnRqvZFx8XR2JGAVBryXQ1wkAVgfRZa2wjqszSk=;
	h=To:Subject:From:Date:From;
	b=oa0PYj2qMc+Kby6Ihs0QKF+OvMkBjkfoeiqnY3iK/xoHO9GvRoCsRYneC37HbxAcN
	 e7jVbAoiGvXDSa8aGynj8tDrJ0e4rBkbIpezVtiKHW1xXyBdFIV7AH92b3pvx70YxI
	 UFZp9E8AVZg2Hi4xn/9C18h51WJCkFZG7J9Hb4Cat1J3UAJ4MUVPD2VJwleD6DYkP7
	 hXfDZa1H7FpA7yw3moTz6Tv3VM6302GBlDz31Tj+ZJLbEj+X2fbhtSTqWcrGf7+Wyv
	 yBY4VAJr+T2aBMGDm0ABGDGbbBlf4PoXtozBKabowSKIzuX0BBvSHLS20/ru0QWtMw
	 U9m2J+uPCmySw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32DECD5BD1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 08:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177969735372.15710.5804056309783582135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff6d9fe9e633146a7e6665dcd84e040d1828f7267c024d9de73d1f8c2a24b3d
Date: Mon, 25 May 2026 08:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779697353
