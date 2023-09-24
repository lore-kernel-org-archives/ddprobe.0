Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86EB3654
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 04:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D6CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 04:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695528308;
	bh=BZIG53sXctYRPG1whlfkG9QOYTCI0nxDFBetiU9unZU=;
	h=To:Subject:From:Date:From;
	b=OriVbpmYg6qmEoxh0UANgayWqo3MEuh0JEVYMhiKsFt24V/7Jp7DmeM1hhjTFTOw+
	 KCNEVpmcQRR6qi5RzQ55CmPGwg19lvNeE7uStElIHZd7WuOb/sohpHk55uDSdvD0nY
	 v5EeKOKxttDfghaQgET6GbZeRM3vv/vMD2Ff+XOOOdjonkrLOVPn6a3ylVNMvrshj5
	 eUm+FzEhWKahRUKG8EiUtngI+cc9NXG+8JhLE7YHy0PsFGcdQ10Kqsv8HFzmVkmE5B
	 ld+t2Ow8N9vro13qbKFa8PqfhKv2iYm7ztL08Ihs311zgQCcD8FaEXh/z9tv9yPP7k
	 XAEz6gZQfHf2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3822CE7A88
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 04:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169552830870.5781.6939278454255028300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802242cbf8745cf0402029f010e0612eb738b3b0f609036b7f352eba08b4bed6
Date: Sun, 24 Sep 2023 04:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695528308
