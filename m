Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78031FD5
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EEF7C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663821653;
	bh=FMhA/1sO2fpSMv7CgtYDNem0j3xk/FgrderIEEhHi7k=;
	h=To:Subject:From:Date:From;
	b=AuPkgmcrMCf12NeBidr67pjZPzHskYEfJyjezs47zbHUQIgCj2AjM5b5BH/pKTsNB
	 U1e7ef3ka9pdYSVOEu0CFD+WZnqKR+x2zRmRsivGrctjP1Gd6RNWSnwOVhaG3VKRli
	 GDRPx0l1D+56sJiDjLOcSsfG3AOFtRuSpA9qxQ1YhC24VAXQDTi0laJGiuGXzn7FnA
	 /8JNAJtUSk+YwTXgf3dPW5FOwX90ul1z4PEK2cWvfSdbZzMfSKRv76px5/6Og4q6K9
	 P25tEcOkMN/35tzRM7h+k5pUIpAI+VMVL1SwljHZqtmhTKSixse3JSlEcR8R8ECNcn
	 Fp29u17DkjJ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72294ECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166382165344.4939.4105455665695768480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ca5d01a3c25c4d09585ffb7796b708439a3c8bde50c677d2c75e7bbaf9946c
Date: Thu, 22 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663821653
