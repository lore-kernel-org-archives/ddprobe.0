Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0850E26AE4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719935723; cv=none; b=adRvvdfXWCwwtONSKzXHdx7RchDnMQyrb7I2jbOp8zFPGLcCT7qE0HS9VYbAffi+q1YZXT6lywgmWPHs8iMXPtvNPWRgBUelReTbvl/h+I/ak3FhZsU+oNn8o8ig48M3adkSvp9K/GBlMgkhrv7FASHuyQSkHzDsW5Llkb1mCcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719935723; c=relaxed/simple;
	bh=XAbjiRVWVFtP6VzKrLlHzmiFU4VjJMNUn+yjI/8iTlY=;
	h=To:Subject:From:Message-Id:Date; b=Ib6/5l/Oz6BuKilddfPfrCJI0at4UQbJGyOqvwCrT+nRt/K65AHK8syXcNbD1tLIp9yIbV0kLPyHbJEnEoU2nKS5NZuiazqdMd2MalgYc0WX6acjyqGr+/6Cokth9KolcrXEhEdvYOq9MULyB9Lo7bNu6E7FNI6QdPgYMQufSjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHeZF0pW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHeZF0pW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D465DC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719935722;
	bh=XAbjiRVWVFtP6VzKrLlHzmiFU4VjJMNUn+yjI/8iTlY=;
	h=To:Subject:From:Date:From;
	b=iHeZF0pWybFm6m6Q9bQSh3O0bWd5q6R8u97+mceOIQsYk1C2IEVSKGgUutp2506ca
	 Cie4iFvNR32bO8+wKy/eq/cTnJCajOVjOU4l2Ld2o2ksxLw5HWT635sYyacxp3SSNc
	 FuzZBCpRyJdOI83Xdl9Wq6FGdWdXLSEup6ignjQJiGfs44GtNzGOknKNRk/R6HKNXX
	 qYhCNHOt5JSYN4wjFA77K9hduy4xeoaTggs+DUbMwQptBsJcZ5nVNI1sRO0drajLc8
	 TLLLKV03Paj5hiRT6WJ4JmXAi3wAmn0iEZpCrazdGh59IDvAeqhDoKeu64MNzGP4qA
	 f1e5SXdgB1gPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33BBC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171993572278.15640.7159392320478044357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db85e6feb56a8a2c033de040ba99dd64c88ecc07571b417840fb00bb09c85a96
Date: Tue, 02 Jul 2024 15:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719935722
