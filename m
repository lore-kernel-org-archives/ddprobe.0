Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4A9263F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8998BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671257487;
	bh=epff5wFUU2OAEo4g0n0ygEtkmYb34OspTAdAxofIVJc=;
	h=To:Subject:From:Date:From;
	b=RBggC93E82LoKgYS8ntB8LTOVj638H2T4Pec8arqsa1CVaqu3D0NqFDZOMu7RKlbb
	 G+lsq7ZaL2nxGMjNqZFPEaFoo91jus0Q43yhvhDC6BgrVH1l0flWCG9Lxk+EJN/c5j
	 IBIC0aFND/qMZw0CgJmy3HTCEez85iHWt+MZiJXTsxK+WhUT7CPxw7ex54JqmRDhfT
	 mXOyw0SVuEkH/FC/OvsR2+axLoMnq4fCLCcaxaCs0avRRnqyxKzojWIM1l2c1g5HYo
	 kRzCe+HIVQePavhMKOid/j7K4MqErTsHpzj3XsSQUeaNsni8qjti0DQXN3wzWW9BIJ
	 TDi2ah7EuW99A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C73EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167125748741.20024.11570889251721960980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda7136aede593beb373bb73d26ba16c38288ecc95debf58a6f41a34daf1036c
Date: Sat, 17 Dec 2022 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671257487
