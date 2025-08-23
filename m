Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27735548EE
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755944394; cv=none; b=QUrszWFizkDobPtoj+vJlFNW8Ewwl4pFgYVCg7l/TOESb82loMnFmHlkBOhr/PMNpGrG5VCQu6jiYCyOJfkhsCi4r/aAOaW46qX+2ezJusuqbYLrZT8tC/JSubi8HX3Sl8bJkUhnDTxVJ+Dd0FTVZDR3UCPs5l0W0AlylpwydAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755944394; c=relaxed/simple;
	bh=RDKlN6Wl7bkKDoXa1Qhnh0fKM/1AvqcfgrnDcwTxe8w=;
	h=To:Subject:From:Message-Id:Date; b=SBxuO8uC0ZiVQ9KHeyoJea/C4/ozLepB0de0UMxl2nCzsC2yszpkHe74ku/gqvt3XzgVuMCulVn1idbk3gnEsVdelRkCgox1Fd/J4l+jazrXnBAz2tt4Rn6/7cUlBcchLI7jdxmemVaoI32Y1tVR7bfRuU8BsZ+pUojjsEf0HbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exDvueJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exDvueJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01CEC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755944393;
	bh=RDKlN6Wl7bkKDoXa1Qhnh0fKM/1AvqcfgrnDcwTxe8w=;
	h=To:Subject:From:Date:From;
	b=exDvueJOcxQhXwRXPhDbqh8XIcS+omSTA2O2oIyVycSJskzjWj5vTpQkuZJTkwFDM
	 7vffaFo5rHhYSdU6ZlDOo2RtJiji1uqbADVEZaO73nstX3PC+JOHManEyoFSoDv/7a
	 TU/we2n0l70NnkQPGwklvEIH8u297HkttxGl42Wr7MgVyopR9VmV9r+29assXQ3Iuq
	 Fz2+GcDoQzT7OWreCfQfn4W8Lvcc/IHRRdVdtft5plf9BcwiiufkreEkVms7KuObsO
	 leOMVmbkhve2lorBH5OMmnivTO9SafhVwX0YG4cOKlpN+8V3NtNQ0+eLVGaZAYp7qC
	 29XqFpz3TCmxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBD0CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175594439358.21136.16073066298132766640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bcdda28b8bbd8cbb4a995b783baa926fe0869b513b87349e8fe8c87e6086bf3
Date: Sat, 23 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755944393
