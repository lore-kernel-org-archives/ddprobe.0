Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8882439B
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6ADC433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689815528;
	bh=0cWLxlkj9o+fuz6ivuBdtEuN694i0TrlWalvcrLD6pY=;
	h=To:Subject:From:Date:From;
	b=mF9fyPNm51cVJ0i3F/FY077vbrnZzVBrJDVxhK4c5af2QtVICLHMRuk80RTaE8q0l
	 5NxD6VZ2Rl8Xi8j7QrT3O8U1jMjL79PSiCV7z8rxLaRNNXOaAIFg90ZKAJ9IJMooYR
	 52Wy9s7i6OCDVZB6XtynF/z8RVG8bZnACexRAbpIJ8MpI/U1+UgmqNeA0r5149ijV2
	 62AY4Y3Y6C+JB0v/CcrvgIQaIVrqlP2NFLiF7SWdyOdozZYpO0BnUHke+itq2nOQ8J
	 EBVycIDLPvvOnUptyP9LXaW2xNTIxbcyn71TiInuRxAWM4scnaVPsBiCkRAbrHpEBI
	 8t386O/kwbmbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3B3C0015E
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 01:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168981552870.22743.13080127834709904642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9591b0acbddd979bd1b95375d3fd24637557d588f7f2e54da384541e24bce74
Date: Thu, 20 Jul 2023 01:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689815528
