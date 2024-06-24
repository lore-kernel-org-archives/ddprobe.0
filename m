Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA9345025
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 11:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719226943; cv=none; b=AHatT+J7W7eKwupsFNg63VCPeVOuCHmzPgA+YyrzlfP0P4GN5sm1HbYXrfEJruTIp5obZGouro9JsuT6jlcNE3m/j4zFWlT5N1qYzq6Mv/NQ99iy1AkepSE3DI5q2SyKjJ2w8QUGwe5sEzhMkg5Z2cnG0qIDgyIvQMIJ6NLGyW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719226943; c=relaxed/simple;
	bh=QCFH6tRwn7yimM1thVWW6eUsnqC4utx2NoFV2LmgGgE=;
	h=To:Subject:From:Message-Id:Date; b=QN3k8uxnVucRZ+GyPDuAA+QJ1rgZ7mcXlde5E3UwGFOedF7dQdw9u0wtKABAiG5VXx+4E37Lyk7LeMiLhdHAj/b92Fjm3/+rIzfaepZ7X6Rtk9u+fE0RurQjDfqRVPo0hJzRC0GSWnekzs5jrXhUmPnEeJtYNc0eOznOR3Z8rl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGzyWrSm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGzyWrSm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFEB3C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 11:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719226942;
	bh=QCFH6tRwn7yimM1thVWW6eUsnqC4utx2NoFV2LmgGgE=;
	h=To:Subject:From:Date:From;
	b=ZGzyWrSmcm/J9whHG+hYIIq/4LSlTdfl/rkk/IIIkZH0Mo8qXY83/s1BUrgdGoE5C
	 MzlKZrNkcgBIvXh5UDkbzCSzkz1VIH+v/8LriGsboHyGtz2eTUpRDk7+Ha2WG2InZY
	 c2qjI/o/CJF9n1/GWJUKsJdJEeofkslofZP0WZVlyslh7gpkENmEsAnoO1fuKDARZs
	 /Y4PCVutLlcDdhAYHemN2MIUl6KeNfVNi4ms+GU68323z97LqIYvgXOHDhZM1GVNpC
	 B4yTQwzpjQhEPPpI/9R0wVZ2YCNMA/PfWLR5HFFkRQWtzC0bkV2fIMM1UhHBbkfRQr
	 NVtbtaSwO84/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C98D3C2BD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 11:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171922694281.9578.15478324882894282678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 371616362c52fd2c116fc92258edccfc58b572c0663816f6ef4dd4be0838e7e3
Date: Mon, 24 Jun 2024 11:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719226942
