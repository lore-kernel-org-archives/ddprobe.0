Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C84E1DE4FC
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744868994; cv=none; b=bO9s9vzNFnp84n3w6JHgSXLem3qPVLtOAiznVyJcun3Bw4fFk3WzrKHKOmgLotnn1VPzI/xjrBPbPm+XpvwPJZBM+/V/pqCXsXColuIbKebnLniyRC+krNy97kWERlMbiRi7+aGHHVBvQ9z8V392Ggw/vGSaMWKtUecfIznf3JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744868994; c=relaxed/simple;
	bh=BmM+KzHCVOr3sPtbN5bRDJ5k2qQD/XypXmihEJ6AHoE=;
	h=To:Subject:From:Message-Id:Date; b=CH6SXTpASVQ6Nm/PBEWPa7qxuOKSuLidjy+RfVAZle3sRnrNSWJnwEDQAJ2EDslthVCMJQ8mu2pKX4+EzcQiF0F7UksQ9E4TihABTBOdYqBAKaZZ5qikFeadW/WWRX7YAtq59nu8sZkDhXlyAYOhd7VOY3XkDeHle2D5gjlQbn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNCZ6Pw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNCZ6Pw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2350C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744868993;
	bh=BmM+KzHCVOr3sPtbN5bRDJ5k2qQD/XypXmihEJ6AHoE=;
	h=To:Subject:From:Date:From;
	b=RNCZ6Pw+6Nye0momY7VAylUiph+EzwaMozcYGGpl0mEylXIiGdmmEAWUmCPDDe6HF
	 hUadq3QdInBjieiXRybbDf744/paqjZ8+wfsF1QXZP8AgwCXNVYoGkqUoH+5rPaV/r
	 opc3MY24bQQf3RL6/yOlzN00TgmIEl4E5F0X13OdKy3io4TEWfjODc7Yq0+0WX+CqS
	 aeWAqFlZicBfGHB0UwysvOS2S+TS11BXySxI62kGFiDBo1pNObaxmkn2p7RZJvcT/i
	 SC1jLufUDrqxYm7jLvf7ikoxZIDwpV0QKubfSl/ugDkCGflKhpG3zzhZhIxE+mRcsL
	 3eb4PKFWgXY8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD58C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174486899358.18907.1274640128533140971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c2708ba8b385bf8626fe29fe2097fdcd6d99922460b83dce0aeb5b7a50193f
Date: Thu, 17 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744868993
