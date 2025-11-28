Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A7B26F2BC
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764312774; cv=none; b=sS+Do3/y2+ATNKOFli0ShuMnVW0++PiikStS5U2BP+hWtCKUZKvlyD7TJkY441YdgWycaE2bqWy0khMAl0kuM4X3IrLrEaIkoO1mraF+HJws5cbSFO8o819vYtxSv7ArrRRHOG5QlHQZhry9ABn4Dy2UCGF7qJFZwTkdgjw504o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764312774; c=relaxed/simple;
	bh=8Hub4cvXZ7/spNU6F1FsoBTEN3Jjf4oqZsQbZ7LaCAg=;
	h=To:Subject:From:Message-Id:Date; b=ZCFxlhqfQ/bO24Fv7cSsyk2R8gHE2jh0KkMGusAevvBz21j6RBOr7smYqwdgx8m/N+7j6rh7AHcJZuxXGUvR7vcf13joEhclZ0XMEU/d5Ko59LLxzn9P3keZnRUbeJjVUQFCakOpTnRlSUZHvh/JavF+0yLCT8LAALmZAXFwJ28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0Panh0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0Panh0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7572C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764312773;
	bh=8Hub4cvXZ7/spNU6F1FsoBTEN3Jjf4oqZsQbZ7LaCAg=;
	h=To:Subject:From:Date:From;
	b=C0Panh0CHo9aWS6UgOoWdXYSlbG4jSKAe4HmWJ8+2oBNNJwRRafZp32d0P7BbVgCQ
	 L2uqvpNRonRsNx5BhPc3PpWjE4bjCd+XaOMIH/kRYDvV0W5KuYyRKrTnimYEjhaHgK
	 psjVIF0Mle8y8e066iOjRQlzSzZ4kxhepDF1Pe773gVLTYD4/dN5JQBMl+dwBnqkCe
	 SKpda+n/+96AE/amNO3U5putZ3yjDkEiIkPqxaRUql85UKiEfQQmIcOkMYS9IvUoOP
	 j7qkN/zjs2/kn6bgTS/VVZXJ10uwkTMtS5/c4B/XmjOjv2oJEwdwAMCScyG+iQ1jEe
	 5C9UX4j1iTUSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9329FD116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176431277358.14022.13320674751623103561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3847766b6f8cb117df8cf321174ac4555357cd267906dd0a084ae7e551d4ab99
Date: Fri, 28 Nov 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764312773
