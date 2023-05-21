Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FE8803
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 03:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D45DC433D2
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 03:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684638006;
	bh=4Rg3ES5NwmPLNisOzMan2ud3U3gf/OM3er6KJ3ZYefI=;
	h=To:Subject:From:Date:From;
	b=qu7X1U6eksAudIb7XQGry+NkeR1oPOFe1JO3RjgDPqKTl7DYECo4UiVbCiBiuAvwk
	 Jv1C3cdmJLezDcJTruTEs0oD0mlGmNuECd2Mu1tfhbDK2RfqhX/4sGLa/KXuq757D6
	 7JYaozBFOtOGwzdW7kGsrPZXRajVmktPVaxXectwfWuwg1X+Xsyoe++qD/YrB0Uou7
	 2LIpDsIoq0PSytmqw2eHF96ilBLvCf+ndAl0a+tI6R8RdKP9DD4wYjw3n0TwMSBPuh
	 kHcSCyiatPKwJhDvCxebl3TdfIjZ7M2435GNaaWv0QVF5JwuIWQexndMD/6txKu75c
	 KfRRog8rFHPHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC191C77B7A
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 03:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168463800587.28337.13626175012325073334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42fa6d163ce0d535408b970cee371b55cbee1fcff148824bdc917081feefe6c6
Date: Sun, 21 May 2023 03:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684638005
