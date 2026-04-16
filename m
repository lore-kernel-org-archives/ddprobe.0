Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAE42E1EE7
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776359854; cv=none; b=Z1vwI/GCv/9hvkeb/5pV1gLWarVTobZOzjJeUCsfj8CozJqLjfRMC98Hc5kmsdq80v01TlyikfcFvqq5KLiiSBL1JBGpVdESsHOMm8ALCSuol/qHYdJcqroR6A74TNAtkCTwh4gwGpfWO0exMMfHhRrPxl5U3IeAKp/zyxNwnK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776359854; c=relaxed/simple;
	bh=9XwA7RqcCD7YFJdRSFILxtJZqz9u+O80HOUZbx5qHis=;
	h=To:Subject:From:Message-Id:Date; b=joPJqznIiLBC9Sj8pldfqAig33zKVD0zkKjuUIR1DOFErxOjiAtkitvL3fBq/yjEtL82jsoZpAGiMG1FiiJ36ZkyenzXwgYkWsiVvDxEF2XFRvG/sXzdtPNmx1wLmAuqHhgHhfGzbzzmaK4RjXGRpvdywJ/ameQ8SDKGcjvkQwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8DnU/KA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8DnU/KA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2151C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776359853;
	bh=9XwA7RqcCD7YFJdRSFILxtJZqz9u+O80HOUZbx5qHis=;
	h=To:Subject:From:Date:From;
	b=C8DnU/KAkV8G+PLQL8GhjCnPJbPQzrpb3Rc+ndGng/2J4zMpwnIh1BNOA1hDMRS4n
	 TOeEsVTz0T1QMEjMncId8Gt/LKRvFZ+K6wYPhCUwbWuy/Y7LRflduo2YpRsEgYPLTl
	 EnsADFnRn5viFKgnsrl9E7ONX4PX9N+oQAvtoDYpmNRkfTJ0tLEgRU0wJH2IjJg7Yt
	 +MPZb3QaJ23wxoTg8s6KfLVzX0cbQALVy0R66x5INrFqbEd9BI+VrjUaHrvgZfBqvw
	 m4wHvzxaLqcYuxuGBGqpzXxppJ3nzuJA1DEqHKHKVQDVOAUjyENeDGpo4VIa7sv/u0
	 5f8wW6U6qQFaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD659F8D762
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177635985368.1843.17803682636355415531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6286a0b2301db90049580368a028b05860cc4153108cd9ce39daa83b661e0df2
Date: Thu, 16 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776359853
