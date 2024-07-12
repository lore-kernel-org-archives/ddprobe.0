Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E21714F70
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 18:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720810764; cv=none; b=nqW3barolPgEFgRN/X7cLMkAKLg7hnx0fm5gWi71CUBAcPQrKQEK4Rx25gg5ke77yGmriKb9JI7qujGm7wB1zYwcESFYFf2LgO48jp3yzf5tcRcLMR8Fua7kgf1lIZRh/HMjhLWbG+Dt0CDyUdAldbq4Uu+j0TFnwKudzGYB3fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720810764; c=relaxed/simple;
	bh=/Ijn03h8zO4Lj0pkpBuvHx1jpHlh47lRE/g+u424s0g=;
	h=To:Subject:From:Message-Id:Date; b=aTyZ0Oa9QpWK7bFNkridM1szwNE56sAo8vQFa8f/mKiZ9/4kt53Km9+5BmQR4/XQIScsKUalcjrCcQuSUP5rKXr9G40uE/YZT/NHWs8AgJ5CVv1A+0w7J7T85KPngwXv5Cm37Oxz39jI2BrrbiZF1alQMLQPbWyk3UMGiRduOCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zk8lXxdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zk8lXxdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B99C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 18:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720810762;
	bh=/Ijn03h8zO4Lj0pkpBuvHx1jpHlh47lRE/g+u424s0g=;
	h=To:Subject:From:Date:From;
	b=Zk8lXxdGB9UXCelXlL17aqWi2ExtTJI+nMvXryqb8zEgtRIa6N+XbHSEc77Ak+bEJ
	 e8d8zVKgaa1jpJtHmywMiuS/rPgjSVFHqRPmH92awkiA/m80QYWYWU2s07uEKJ28Mz
	 koRLILAWAkS0m6bxDQyFXWIEiqW4LPoHtYB/S2o/LR1OjQ4yaPuGCKKaPy9R86uwLH
	 /ZqgHL3hwjDijrDngTRQMwuX0ATjpJfXRRwJmeR2iT807vChDQu9xpyLF5X+XWv+QV
	 WXfgfqx4WS6XlOMJTROhZz7sZXix/cT5pYO02Iou8GtW76jUjHitCdLXH1oAs99Guj
	 Nm45cDgYaTngw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDECCC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 18:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172081076276.7163.7183750888110242136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84c30c025a01bf84057848e1ee4b71f1027f02c97c443b085c14fdd2d52625c
Date: Fri, 12 Jul 2024 18:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720810762
