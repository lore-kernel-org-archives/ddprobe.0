Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62082567
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73818C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670921487;
	bh=Uv7Cb9DrK8HA6UzSl919wYIVSWBT6cKV+H9wQ2EGKH8=;
	h=To:Subject:From:Date:From;
	b=uxFMY8gtkIPUDrSE8KQ4LKe0oBRJBl3JiiKXZleG+6+wg/wi6qE282yR5XzrC2qMp
	 uAK9NjO97MfgU2FDwKjL96Sb3JamckvoHFADz7U53RowZhCKIwBcdKhdCrscREILJb
	 nr+N2sHSLQzauAaEq6MWOOUzKyUi2mzhBwZ8+UQ4SklahgPeexhx//FqeRUIM7j3ut
	 VvIfso5YCTAdRNK1cUxSvs7a/hx/OxAhz4bNJX5DtUfMUHcivta/W+O/SdoZ2/O70L
	 1m3bH1U5v6wvGVKYYU5rE9VA/DONnFrxskPZ3Nb3jwaqn1PUGNqPVRxEf2m/xlvcUA
	 u0/GxI545Bf2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D9BDC4167B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167092148737.14556.15706110545206731547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703eac98f268e9d2227ad42e64008e25a33be60842355526210a414505666817
Date: Tue, 13 Dec 2022 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670921487
