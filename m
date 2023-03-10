Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DA22F32
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 23:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03F52C433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 23:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678491906;
	bh=DrRzNd9cWDKBlB1h3rLsVMbnaR+l1eB9oPSupJUsTAc=;
	h=To:Subject:From:Date:From;
	b=t/1QfwyvX8AndbrVVlNwOEz99AZzUmKDv6Yyl17mE3ZN0IsEvuZ9jb6KY4ABbPczt
	 8DdgQ2x0KwICtz8sc2a10j9u4fxISUMxV/3GKWrwImwnUtcWw7dZ8KWrK89tmZ11Ke
	 6V2PXJI7v9gzsYCptA/c/5yN2fz25ALTGT2CBCbnLI97onyxZSLUyRVBRkkffofnxP
	 VPIm7qM9ODzWt2bl8PbJrMi+4ZGOquXbcD81GtBEyiOwCkjbT5MgJwe2JlFt61aPoN
	 99aVubfSo2WkTCK3U06/Ji4lR0DH6H5Yx2KdPhlzewIrjAvuZG163lfCA4m8bbIAhA
	 NNL6ZEP1w9KpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0320C6FA99
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 23:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167849190584.3497.7748288633672827715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d95cc2f8ee266c7932b024fe430a4c76c12941361529612c7c1d062d85eee2
Date: Fri, 10 Mar 2023 23:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678491905
