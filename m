Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E2A224AF0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759436394; cv=none; b=YukiypGCbq/w5QhOO89N83b7K6bMC5wDyZbdUDLTTk/01WuPYOfVxUU+gl+z3xbKrvVrxoEXoIXQZwsJLWGU4De9pl+yJyfTrPuYpYkVIlSJ7NgV+v621GL6p2J5qtcnWD/TCCMM3JG7yqWhY8UIJpE7uo27UdiEnyi5G8T7Wfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759436394; c=relaxed/simple;
	bh=8bm+aezNlZ9+Up/VALGjVbmlARfrBHUYxQEgm7WvEp4=;
	h=To:Subject:From:Message-Id:Date; b=sAEtbdYeHsL2GBACB/MtlYspx0Qsq92Khvv4KsGkqRQEOETJ6eiVsjKzKRLRdodkgpYb+LVsHjzoQW83JEEjTjGK46B4cBQoDIk0k65NHXDWfJSymGXzzbGG2BSJdpRZX+FS90NwbSF/8mW3XOkW3hUJ/E8kUXCr4FxEAjNB1Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Any3m8YI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Any3m8YI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F17C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759436393;
	bh=8bm+aezNlZ9+Up/VALGjVbmlARfrBHUYxQEgm7WvEp4=;
	h=To:Subject:From:Date:From;
	b=Any3m8YIfSY9x6U3QTG6P18jqAnbfOZL+8xWgd/K7qeu8/NYlxxb5eg2MqBFiIRFV
	 KgR3hQ0MePcfo57GPBhqmrz7EOLZkPuaKiDln2NSWqhKdYsEy2Qc/y6ZkphF5bHMht
	 MNOs2KufImhHdzGtO0UAqSZ3AZTgsbGam/oAEN33g8PykuQaSeNO6lGXlWRX2g0G0M
	 4qTiHrWugJvBlNJmH47jq2zklO/IcDVDTbraigKjpwrYUgvEQT+XwbDiLjq0e8j+zS
	 1NPNPWnxgCq0tNYKlgeDJZF8lmXArWeZzkIgYKF1YGbLuND5c9msS3d4FdW6bb3HK8
	 aHuRMzSZZvWXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A9FCAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175943639358.13874.3227621652548005028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3044b7c735f38fc740d90158d709ca3d10096c254165bb7b24867b0bd493a7b7
Date: Thu, 02 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759436393
