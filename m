Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F222139C8
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742324394; cv=none; b=vDzixmR7ClCsI8yyN9wsazMxwBLbp2l7yJHu5tTumCZCkOEiivRdh+DA5m5EA/JvlqFqcy5RQp82gMcFiPCs6PT+xns962CDdSMj6Eu2uy/zTiaOP9AgQwm3SOg+aLvLW16MWfRktNJ7jTqJHRuorFcIW2EZxysMm/VK3YP1C7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742324394; c=relaxed/simple;
	bh=zhTTvu69qqoTr4WATWr1zBCNhOBl7gvPTSwfzUtRUGs=;
	h=To:Subject:From:Message-Id:Date; b=LAEHXR+DLU9tZ+Hz6wkzzsFA1pQfqfFnLhmZNLrai32CK9FtHngWh7tPqxKop1O9C0uWaaJbL4fWCIQNL5t/LBAP4M2l2STDQTLTMr02jull9ZzytxhFGuFW6AhPjg72gHJCh5KuRoVbsqsOzveW8tqdCzPomsDtVJXvvcTIuL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHqDgQbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHqDgQbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC594C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742324393;
	bh=zhTTvu69qqoTr4WATWr1zBCNhOBl7gvPTSwfzUtRUGs=;
	h=To:Subject:From:Date:From;
	b=FHqDgQbFqyB60xQaV+qCkAX0GYWCCrfmS5qsWHO3iigbNV/YFPuBPFdG8pv8pSy1M
	 8RVDZugHiFTvovaajAXOhXDOSnbGRBCGuMsi/j4wYZs8S6KaDVFzM0BVPt3KGmSikQ
	 Er8qKf83CpfHIWnKtd8n48AO1OqVOpNhqKcYZjSrBQiR9NCRfqjwDZ7L6bDqbli2wH
	 ksPd3x9iTXomR4F9xWPh8Pg/Z4ga1QR+oTw/SogZtFMAXI3UqoiwIVUj2SMAGISGdZ
	 EAEKAqaF29kfWPxtA/uHQatfIrxZmSF8nHGf/0xjv3w1H6MZyp5Sios0AYqv+yKSpI
	 2TmrnZvZ56UYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E72C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174232439361.7457.8144297110292423899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc4517a8c447b7fe68917e4b0c6fb52c75fca9759f41d928e31f8989ee52933
Date: Tue, 18 Mar 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742324393
