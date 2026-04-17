Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F90035A3AF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776467854; cv=none; b=Tg8RmE862BnTeF3jcBj1wMcjpnvaEnNQJ8Ug0TYiWJ+Y2df0eN5HZX54tWP6/vUUYN+EbqtqDOUB2ybYOW1OzpMphFey2G7ZUOxtY3PwEaLh8ohB1bAWrBQS5ogMVr1kSbNsEq57PBvD9Q7x7MD2C/CPGKatBH8ibweirTZvMvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776467854; c=relaxed/simple;
	bh=/NfQ6+WUz1TOTbtz2csQNDTrRxRMSvxtafEAcv9t5jk=;
	h=To:Subject:From:Message-Id:Date; b=p7lvVqcwjh88IKkiyHtdeMqf2Fj8sjXGebYbEvuv/lWMesJY5I5KGMRIRkZKqeWNOBl/XcUYhp1Nj6vznUNRbrb3418Y6GeynVFHmQa+3sGcqTgZVNqqYr6k6IPUqo6xe/XU2obROrO+sxFpKd09bdFD0PzZDucohvY+YaqS4i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRsu7Q9A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRsu7Q9A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD854C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776467853;
	bh=/NfQ6+WUz1TOTbtz2csQNDTrRxRMSvxtafEAcv9t5jk=;
	h=To:Subject:From:Date:From;
	b=tRsu7Q9AiQmTkdonGC+QdjOS6nl5RNuoyISHQUnTOuh9J1N/2F/Zgwcn1BjTHsiez
	 CLW7nB38LHR3UarigcyQ5PqWp0SvM0O8ngDBAN83Ddd1v7BXLF2IQxHXaDdyJPkFYL
	 JL9+WCQa4DxhuWSmx4W/AE6LZP3X2a4KY28qzpPECe96ydIS+mCYAVKcizk2SRNmXm
	 9bxOopN/RXIkiqEwqXUs1HUj50NyfrfZV0cZK4LfH2EHmJ/qPSbUU2Piw9KuUgZISv
	 6f2DC2awGtkU5ugiFwZBYu6Qm3UMyOoP2T9t27XFwJwaW1YME2TBheTpDjtKi6WkR2
	 PUZGC4f8D4kQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A6EF99C6B
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177646785368.320.16360845275392497838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1bd60fdf74d4652b440cd2014d363e21074ffa1d4d3089237663adf1c2ef283
Date: Fri, 17 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776467853
