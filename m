Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B398C612F
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CF0BC433B5
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662753653;
	bh=z+CK8s7vsV5Td3hGE5Z0mpZpR17FKet1WhbpHPvbZuM=;
	h=To:Subject:From:Date:From;
	b=ocHGzu5kK+mC+U/mZqr9dGgZaW5p9wWNekQXhGtmVI7izFT7YHf5EQpGZJNI7uBzc
	 tBnTDjUGVtUEE56lNzMug+D/dGv5i56nLdBZJvWLxp7CHShfcrqd74V1fuQ/wMa+Mk
	 YTyh2/+4QTX48SsfKBKGMNqt1lpbVdncKIupOfxbasetIIOPY6q2375Tu3Y9GNwTU/
	 JL82TgjmJvEhw9C1bUNmb6tiIhCEwonKXahVqrA/PGA+2HrlqZ3D/JcmWf6bbp/Zkc
	 c4NaqKiFSKH00GvcDDV2SLW7SKXRnUMQG5wUHoKrnYrNIXVJ/Rum+EnoGBO+VNbv76
	 zeNd9bgrj4b0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F36CECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166275365331.27369.11526293570535167696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a810b7cd4e6b8f2db2c770ef6d1c632664b6b7637fc55976e20362fdfdfd5e6e
Date: Fri, 09 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662753653
