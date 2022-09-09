Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C7D808
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE35C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662722453;
	bh=gcxlth3pecO5+XcNuCfhoS4EbxM6F2Qo8beek/JSHyk=;
	h=To:Subject:From:Date:From;
	b=Oub49b0KXdpfd58IR8fcrW7teqTOK1GTSBBLdizOfJXNKeS4G4DsoI6TkEDGcmEDR
	 FKDEbpu+NEI2ruEeukAa+x9gbr5gblzDFTMNOyYVYZRQ6vP58r2HjK78th/XbOzT17
	 TX1WmUjARSArcEzZsgejLM4IVws2W1/X4fcdr64ER4scvt+9VAIvzXIbrO7bFlDlA0
	 p7XXuGuHiXmnrPU6RTWRV2yOcJ8et1ae0WHSM1Jmt6NhzGexy24qAdRNKz1UPFAKJx
	 GMDZkaFks5AYuxfeifpXm7UyFRlsZui6+kfhTQ9XKwrFrN+f/1Rg5QIYAar04cS8y+
	 sSWx0aUDcBwfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549B9ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166272245333.19899.5128381927784591700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01fac866821f584080c1d60f63a8e99a0a448f3c713b3dc434071d180509885
Date: Fri, 09 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662722453
