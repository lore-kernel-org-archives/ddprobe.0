Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F15F1C174A
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742531995; cv=none; b=Lp4jSPpD9MqyEih3Cu1r/H7gVg+oXvM94EA8fg+b/T4N+0dMKuLYlGne/tDDigqHCJqLpMgT644R22TKLycx5ox30AUp/h/u8nUY9qJt0tfvWON32HZWXfqF51fsKRq1YxRR94pZC5xT98uKSKcvF6xr7yhPVya6xKPuGRoI+50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742531995; c=relaxed/simple;
	bh=s5qoWKAOIFnSK0HKcQFGC2S9dKLBOIfY2LsWRx1xKTo=;
	h=To:Subject:From:Message-Id:Date; b=BUwzS8Sv129b8cz5CYN47KLGICwgX2i2WA3mIbsO/TExEWRRi2X58zDo+GT9R7zQ8rJJaucfZjKC8M//SieQ9mw+5+oow8GF5fSXlYkSM9RaG+0XCeX2QP54/06bLG3EFelMK2bBAK6lcquIs/jWrVOthIhSVfN8HRSVi0bY/ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwlsYQ8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwlsYQ8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC957C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742531993;
	bh=s5qoWKAOIFnSK0HKcQFGC2S9dKLBOIfY2LsWRx1xKTo=;
	h=To:Subject:From:Date:From;
	b=gwlsYQ8KLSmvjKdIxRm6HnrNu7gPW2HkJnFeh6IaV36jgkoRDgcunLrqAfKOU6uDj
	 T3WFtAbiY5GfwVrBSpnv2QpXy0aXMKungFXuxDmt/zYbuvESsi4u8d/f3z7cLB5QLo
	 faw5eDS7faJde6X1MlkaZdzS7hGaayKsGONbV4qncIWlRK6SQvGh6LKoy1+KkasiC9
	 Q5Iaa9uI/kykwLrAjpGBNrhFACoaiOHw8Ht5L9BQibFXkmHnTGNIe8gbgFpTX44E3S
	 /Fvzecj2fkvSS4ubfKTuhbrwoMUkAQQQ23iE0dbxRHBQEguOtEH39MD+NXac8nEbug
	 ODBKY3vnzUIFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4C4C35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174253199363.32414.13438417865051507124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac4c9d14e7f3122cc316c1557856bae8f5397b8aa109d21330d70dfab7ae642
Date: Fri, 21 Mar 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742531993
