Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A828497
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 18:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC99C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 18:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676919545;
	bh=0Qc+GcixOg6MrI9Y/XAOTvDcdGGVox4zZsH5kjNe2DU=;
	h=To:Subject:From:Date:From;
	b=NnWoyaOAT6psuyMWNlmT6AfWMVVQV4ca1tywNZ6j2nrsiA0nIP1USG+PcmRJJ7y7n
	 ADJklbGhLg4ro5leqANxTh8Qa6EDWNP/DiwN9WyJz1e+DmL70mU/Mi2/1j3+CA2Sly
	 cDLlCX0Bvww9dFacDtEMWV9cRthEmLeWUfTv3L54biaaG1D2RwXBWIDnwFX4yN7HyE
	 EgqljeeTKWI46n/mD2BO2rtYc1bvW4XYFJzqLAzofQTW+mgcPMLCUB6hd0+Joc6t/h
	 uMidTjhbR82CrQut3FWcy5HmcN18YXfJmFfHyo7VFK7RhlazkcI77sJs1Wcqp19UPL
	 Q+bJxTyhGUZ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35EBC6379F
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 18:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167691954579.4785.5987264297362471450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead2acb7bff8cba24f52d9900e3f5dad626f30ac72eaa105a8322af221913ee7
Date: Mon, 20 Feb 2023 18:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676919545
