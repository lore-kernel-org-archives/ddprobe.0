Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7F743934D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783556914; cv=none; b=d9WyAI4c7CTA3lq26iO9QdCfdEclg8fWpIZa44wxWGnPz5sfFyO/8k39mS7Onv+i3gB27v8h77/gRdPSqacefzMXI1SuRe4umytOEYBkRuWKHuVw1zQisawgaJ9C86If0g3hbuiyEVm7ndZCE7ssptafM9pydMGT6UQx5qx8Be4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783556914; c=relaxed/simple;
	bh=0KVvKgVb3M9e4shxMCGQW1wXKzM7O/TaFNozz2xR0VA=;
	h=To:Subject:From:Message-Id:Date; b=BFuXf3XYb/jQfb1xlLbxt8w5kx0+HRyhpMiT0JAwFgOtTobOdgeJ/Ojct/c9WKtebRxgdEN8k8Kme1nGZ6s9Xs8G24puwVRu/3BHif3z8HnJ+2ZGW6vnjyTlIIXx5aSzoPbFUA/Ea3/JVt8LusQeiXBnzDwYconrr1B9rIUEpCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQ2BJwIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQ2BJwIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C950CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783556913;
	bh=0KVvKgVb3M9e4shxMCGQW1wXKzM7O/TaFNozz2xR0VA=;
	h=To:Subject:From:Date:From;
	b=VQ2BJwInw48l8aSUCbFYA0ARfZMLVuGZu3S22A6XOKcN/j5Zroz5ADEd0wdoc3l3U
	 0ERKvTeLvXPT5bqlOIHpnSxdYn2KbN1FWmggfF5xFltUoyg5N0JMKDwsLTUeaIDAnT
	 eKbzlP6L7v9KcdZXNnLJmjuXVsbh6XpjMNqSeXWZCeWt8ra1qaIbxs2M5Y54eQx/A5
	 C5TERz1ZI+4RCJYJIxtVlaZ3v4JJCBGFzL8ff4CGh80xseCrrF7Bg3sJhJ31tq7Vti
	 O/ePMiXfr4h+biK0WXvKWoriZ9q1CWjTcYriHrVLLdudhEfP6mhMBwr2bJBJ/KODD0
	 d6b3iKbH8cDpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8337C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178355691368.31913.14320834608831771790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1743c34c9e15959f49c468d85073a965c966fa2a7e48f35190978662218d425
Date: Thu, 09 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783556913
