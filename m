Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72116ADB
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86925C433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666649453;
	bh=UEQ3njAyFyOsed6MaclQ/C+BqjqRDZ45R10PlU9uyF8=;
	h=To:Subject:From:Date:From;
	b=jd/QU+YjRQIVN/Y4uvLMBUkaLkLvfMhamuzYAohFzlsBkC5v7fOVNZ3ZHYIKZ/v/K
	 cvVowdyqQXP6thyBPJDoWSdYv8nEomj/Dc/rAhBur2hWT11CrAefe2pHqcFEkITx9I
	 8qSrCpaHMM87aO4gkFmKS3Uez6WjVE/3cErChVn1oacDnIOxO2o1lyb6d/lIU3aH7x
	 al0GLp8r6UpgKblOULsDnRmQkMA6ZRR5QSnKVmkAh5PxZbZg/I9PbgPdgph9huPhs9
	 /5yJxGz8bY7G0z8bpUQpJGchAtK/eqMybo74fSQbrBysqNinGm3SLxVvq3KuinPi2m
	 3+AKyokGBsW9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 655FDC38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166664945340.1417.10452558340707286559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2527787862d1728d96a8348a0e72a4a989aef18d5bff4d3d9b8be6074a9bbf02
Date: Mon, 24 Oct 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666649453
