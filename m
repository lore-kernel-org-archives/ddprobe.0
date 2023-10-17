Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B164404
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 07:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDrKfdiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D702DC433C7
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 07:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697527628;
	bh=Dbt068nU7rM4yGce2GbXRO2TKGnFOZRH61mApglwLeU=;
	h=To:Subject:From:Date:From;
	b=aDrKfdiJfoJxdK0RIXxmRbi7VPsMRvtsrCLWH2lGvpNGvLciI4CsdE26DdFXrwm8T
	 EFkUYbPhY/U414Z8v8qsjxLljvEPzRmex8CchEuntu7fuF2UImR6D9H1LqU/9RvSlH
	 mhjkHLH0KEJL0CRUYwOTJbJb3agJisp6+2Mt16YE1RXmhiXHp6FP/vbDMBFO/f7tlg
	 3mQmSPDnjmpq5tw6GhCuVJudebow9L6sMlKZkEk7wLBZsFC2fkCUDLDsbkJsleZhB/
	 40HZSi+EsrwUlI3Nm/AFT+BefPw3v3u/wc+F0StvTHoKc2ZOMoBCq90yJD/DAZTrc4
	 Avj8nnA60xHoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B983DCDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 07:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169752762873.4303.9939596706140542240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd072fa2588155d99a51a814e712321d908233d2ef5563f826c0580a8e929d25
Date: Tue, 17 Oct 2023 07:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697527628
