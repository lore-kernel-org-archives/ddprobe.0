Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2216B2376FC
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761980994; cv=none; b=T/kzd00ICt3e6+fD2aN9cdzFkI8xHjM8/zywpG8Xaqx/UWw1Jcl+BsA9TD/zrwfajwnDIIzLsxUZBVVFV+gCruh3m8Dg/kVxURMM8xcm2fIHrCYiHP+NdRC82Z+has4qyycsP77APiN9+sr3pUfl8YWH1ATLzQcmyEiabumXK1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761980994; c=relaxed/simple;
	bh=nbliPskDJI0egoBbY4vOgyfsSAe6dS0Txhgg0KJuJyY=;
	h=To:Subject:From:Message-Id:Date; b=mDGBIjFlkh4qJ+za8EzF1hfOGy7WTm9EQcm/Mn8aJlBgScn5m1T2NpQymDo+9FOQS7Vyx1dBv8bRPr9x4nEMhwOA21u7imum1K4qlmlS6KGDKOzGN2kgMpDF3PMSahH1tBodkhLMIS+Lwreg9Oh1Y5g+nupb0l5D1439+Y1iE/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUS+5Nw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUS+5Nw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA61CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761980993;
	bh=nbliPskDJI0egoBbY4vOgyfsSAe6dS0Txhgg0KJuJyY=;
	h=To:Subject:From:Date:From;
	b=YUS+5Nw+uB5gKNlTPrjRH92QnY7+BjOsUZpnlpi/nnajK6U0ne4bjBl2vZKdBlQI4
	 uVLjO5BXWQ2Y6xeN+R9+ToNCaqSrWyyCrTANikkY08euH2AqBRD/L07dBFuGe6NuDs
	 rOQSzqGbjK7s+pwPo9/MkU0oB+GBPA/jX/ZznSPrDTZeQ6S7zJIgjXtuSc+XP9eKV7
	 zemMgh01Sfvh19n+ViRetY2ldUQs09V5TpFG2+lCTRzG+5AhLGJFNbGEjiIQ/xX/uD
	 4e5j4mA5+by05MekK/N3eko0S2wPq6GdU3VbJSlZVzDJr+Sn0sPTv2POipCbKUAf9w
	 qfEtCATUmvDpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A73DCCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176198099359.13228.15355338424029800892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28242b4aa89c00eb70e6e21c1ae82360b438caa7b76c27d9cafea0244cea7741
Date: Sat, 01 Nov 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761980993
