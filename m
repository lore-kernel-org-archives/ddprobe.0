Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833A3C12B
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 20:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8400C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 20:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688933228;
	bh=mbd0ZStlqF6A0pg2mfecNWNIgnrHHMmF/IS3u/0GCfU=;
	h=To:Subject:From:Date:From;
	b=Qs10ruo4EVpm5GaCV6z8yOCXru45LW7EjqwQzyBSJoHIgLb6LKflUgOaYbBysaDWy
	 uV03z+4gc1LJZyfJEoF+XFu4aG1hLHg/A4Eo+GO4NNB5hZU4Dgpuq+MyIEZXWT7tC4
	 0AzOD8Mgu4pBzSlpSyWV/azfQa2I2Hy+yiFGGSv7JN+3iopSzQ8B1CjPkimuyCzItq
	 +U22omPQVQUeV700zesj2ayTDkQWcDJZuNFuuOwkwMOgPyk6ZTitgTjbBuJBx24BmY
	 3OtkgZ2V6ccmP6+sT7yMTXI3znCY35Dh7un7Pu3ca4t512W3tHHrWbxDF47VWoy+CF
	 himMC/Arxj5qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7B5EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 20:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168893322870.27284.82341592876566601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf42ccd8b0617736c339e064182f0c2bb1bbe299a2395581dfa5e0e36985332
Date: Sun, 09 Jul 2023 20:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688933228
