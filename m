Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9F14C9577
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778694034; cv=none; b=bmPFPtigUaI18S2GgvdBpp8OqiSvwEx8b8lkR0CNL2aBdnd1+ZqmvnA0b5cZM4TUn9gAmi8KEu4/tFWbW2PuleMC4Mc4vfY29dNONgNuVCMC5HXxQ2uBfHxv0ZBMPGuE7tIDDAe8h6gNS+gVZnPG+Bj3yD5eY+4CIJbR5D4DCdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778694034; c=relaxed/simple;
	bh=ZjrMzPZ+jz1Wm2VO3BktSdqc+mztjcdCUn09jXtM9S0=;
	h=To:Subject:From:Message-Id:Date; b=mO0vaKcSB+/xOUEYDOicUHbp4xs1bMmCSm5W8nkUYMuAz1+sAgB4dYhMuCYJO5irJlzd1M5qMd1aF3WVjkFMsylYTsIIXlvC3HRT0PoIHlORZlW+dvFd7eZ9f+pC0PI2WbEKanf8VOkbyoOcJlPETdtPU1a8axmEr5/FrG9qrKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAk3Thnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAk3Thnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB65EC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778694033;
	bh=ZjrMzPZ+jz1Wm2VO3BktSdqc+mztjcdCUn09jXtM9S0=;
	h=To:Subject:From:Date:From;
	b=LAk3Thnv8AFQoMbSwtyXEHc/YkAMa879wWzsFKS0cesHOfaefW6Rq4RX5E4pJ4fPD
	 XlpInJ38Gn5OmLcHvsaarMs1Qb9VQOeMTo7IsVCOaKK4AD+kP1G5RLoUrS5cHPqiT6
	 gmGJZTbfuwmDemyjWmp+xOVHv4OLdLM2ZXuQVZeMfqhv2kMo3Hmbhh2IcUVhSbhkTu
	 gXRMX/E7B3k9vAbSPkhAvEeOHeTrcBIjxm96byZiWRWdMY1zbeqbdNyfIyOVVmQWiw
	 qKvvSY4UcqXkOg17cRMbAoaRyPVoVAB54slCuud1qd/ZHENeXNvaDJTSd62M5kcBgd
	 uE46yQZVzUMYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A968ECD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177869403368.16385.13979029898595022234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035256ff619d83f59bbd8cd5dc3016ab84aeafe06e20917c15b8ca5a25293976
Date: Wed, 13 May 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778694033
