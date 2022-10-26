Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F591110
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 762C5C433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666782053;
	bh=7H8t93RwguAS6D+aNfJ2669nEP3kD76L0CzmycGkwhk=;
	h=To:Subject:From:Date:From;
	b=qwGR2QuVLcFc1u2I++P1Xe53J7WxjRHTbiFYU0bHqTDn9dDqMrGAQ088QXk0oigz9
	 s9mFioANkCDDl2Ua5mXUVwxGd4LfQKb8yKMEGW0wCHwgsz8CVaidFtzWJ2yJy/Vmyg
	 v2fH17nPAHBkzEjpb+lvlfVORNdu843Kvuuh+Yz+J9IV70cIsKtM4HWpmq41kMUzav
	 3jAGE6JZB7c0p48KV7EMWQCiuFXUHeIuDCJEmK3pO/E6xdyHDcvElkiQI8Chlxvbq/
	 llGOMSe+ezLdM8bTIvf3feUKvqDX9K41ZEft6UIYwMmHUiWab6wBVm4H+JFw0jT1zF
	 hG0AvfHyqiihA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6102EC38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166678205338.9994.5211354990538260775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1383223d61f9abfb99a1ee945552e955ac82a11040117625d295048cf085b0e
Date: Wed, 26 Oct 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666782053
