Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2BA7E2
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70F10C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661991053;
	bh=ox10Djlr7ugkH2jBDPA5D3zcAAE1wbhcMrr58E7We6A=;
	h=To:Subject:From:Date:From;
	b=ZAFRM4DK/x6bVIO9DXlMOw4yQDUAqv3KTxDAdvNTp7Twc9ZeInEl0q+Xy9FpXg6pU
	 iduqr0AedL/qT6a+TthGD8dEkKAG8T35D48KysBv1NvdDSzNyzQjnbIDinzRI0rges
	 2SSAo4CQEZ4MRvxN5kY87C1Br352GXA/febnPOjqNo2ntdmpE3M5B8txDHfLbcT0vy
	 JEiEQVrjaF6GA0zxiDhEFnF8KRCxAxdWhn1sqGoZRbpA57S5IFb9xoroaYy/EosjJz
	 q7ZN67PIGfCK/WHMTV33dTctolZ0bZJhtm50cHaiSKYI4jkODgta3flmt0cS/D1b3N
	 bQ23R4HYmM3FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58397ECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166199105335.14603.8346171975529248732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c629091c18cd9b8c1fd51c31130199023ea92e26b28c0830a14238a447e8b7a
Date: Thu, 01 Sep 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661991053
