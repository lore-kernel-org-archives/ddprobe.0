Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFCA4211A
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A1AEC433B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661762452;
	bh=DisQshVUlAOCdqXjirhAUqTt3XChWyN54Odlkd2Dnzg=;
	h=To:Subject:From:Date:From;
	b=SQC4FNVPDgybmTsnHejNHjFqD4ki/MlFgE4emYIxOtwWY6DFsHG0ZQZDJYX7+ngwA
	 nGf00QiCLpKmeXZkn66N48ctXFDb8E6kDyUPEkepsWabFY9vvUsZGvssDRDAXNVdHO
	 uBPXcFVz0okuhKy1pMRA6kxA2V3q8/5EiE5JaPRQRoVeKb+yAs77gZccBaM1RClYGa
	 i9Z6VY1GI/QSXcGtua07uMY30dwmfTyQRxMAbVp2yDcm0CfTX+uZ8qmmdqPMz6TId4
	 9kCrdzrJb5EYKvjAjvYSa/OJqxU3/c9KSnB9PiIlG1DYuMtirWqow4VE+xGi1BACnq
	 1mr2rN1WAeA+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50FDFECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166176245232.32050.5139432166133882558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 787725b5df02e2493f052c11a6dbe60ad82ed8f502dc8c72842236dcb9b1bf84
Date: Mon, 29 Aug 2022 08:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661762452
