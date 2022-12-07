Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4110626
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67BDDC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670393454;
	bh=Zs1/gH657WHWGiiZr2sSqqU0py/7B0vgTUFCZEmw/6E=;
	h=To:Subject:From:Date:From;
	b=u2hXlpgEDjR+OVBFB+SJbhxQuNWvVNNSVoSCRYUGBDb74zxxkWUeteORsD0KZjf+1
	 x0+sHvQ3T55EfajJjwNCVEI7AIoNhB2TAnEyOPEk4K5szw3Dj9CsRVHPOn+lmSryQ3
	 WOuxlneyjPRWUIZhjzObjTKo6D26pYiSOeRlneN9/Iu1Sa+LjtaXOlKLiHqM3Vy5pP
	 ezkQ6iKkWPhVOhAS9cXsVEDR2c83adYwvsXq8NpPpHUB1CDfQhDjip8DYvOZxe3cbR
	 waFTMtL38QUemy4UgxigvtVcZnppcpUXqRAuYgzyIgjnfxueQm2F6SCDMdmMJsescH
	 pqT2tLTorAgfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EAD4C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167039345431.18014.4297645052275131024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bde775ceb7483300a30b26ab2e070d5740591af8034a7d685ceb7e565d612d1
Date: Wed, 07 Dec 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670393454
