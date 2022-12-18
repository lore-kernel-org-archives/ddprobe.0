Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32997E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BD14C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671385887;
	bh=4IR5/8xoDlf7hdRo8PPvBL1jEfgEI0Yuc2GBj87ySW8=;
	h=To:Subject:From:Date:From;
	b=B6NyrZsZ9YuHkws+xiZ9uQdoNDKwupdTjSPe/i4KCNssmA27IWM6crCGH1BtM4yAV
	 nkE9m6dgo5GXmQDzaUXytDkEQXl606Gr8IgrmPrY/VweFEcIrRlJ1qRJlXwc3O0iLG
	 G3efw6Bqkl8He8rncvz38MfeohB3Ochq4HDrvEjwYEvN+ldOLRMAyZpxInWQ6v0Wax
	 Ze441IgubsVG7WkcR02wEbydenPVzBZ95HBXexq3J+jhKLaoqpMOtSgi0o7kW14Vis
	 yuJW8eF9xXwxAV0e+WwU8h34l2yH3lFWxbPLpwV9OzSeo6OtZyv+z2/sXBJbqP3s32
	 LSbs4Qt56VYJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61437C10F1E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167138588739.17249.15209322504730453877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3ddf402bb98f8eb435577bbed4238164d0527d19367d733e7bfd10aa55132f3
Date: Sun, 18 Dec 2022 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671385887
