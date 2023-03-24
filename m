Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350857471
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 15:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D569DC4339B
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 15:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679673065;
	bh=tXPGsfsaQPfWtw/GbnEs5x+klpM0xcEGYHYwLEn9h44=;
	h=To:Subject:From:Date:From;
	b=BQbzmV3B97m9Plcg/awXrN1jPrYj7Ozwt1426j7uizN0OQaM4WuwAkDdOCFkl8HKw
	 m76SYb28UFFP1Sru7wN+SA5ldjChWQD44D1sDovtL0O8doVT1oG2LF30vJ125GKZ/b
	 7WjfdeKEbvE4Bp3Kp8c+R71FLp2j2Jr4c2Mmu/gWvFNodlOrqqjjpXInhJrq/tzVdw
	 S+w3kTKdL1pvYcpCjYbDzY4m6HRuq7UfCui/aLnEssVYXgw3V83d94GvWfFFGMdmho
	 OlCpReFklYbWhtDwsOCnjm2sCcEM+XT4Ea26ZiuuWByf1F0xr9qI7kHKBby60dfjxa
	 z98tAa52Tc/XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA0B0C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 15:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167967306575.26831.17847485054205478548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2b7102e012646502d04c640cd221326256e758cb5df11df52f735ecce3d2034
Date: Fri, 24 Mar 2023 15:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679673065
