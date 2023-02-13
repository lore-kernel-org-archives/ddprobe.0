Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342927E
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 02:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D898FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 02:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676254445;
	bh=J7gVhvg5Ejxviw7HQ+N9JL3U2uS6EjjJ++E0J1a9M5I=;
	h=To:Subject:From:Date:From;
	b=dGONa9aRoqrayles73EGbn1PE+941Gcu/WkX6m1lABWcUubVyymUMqennxj3cvkEF
	 HJuZSBP9WoVFCJmBvoqyFaw12b33ptjFiXbL3LekNlmaeWKtZF0+UI4UF9qNllfjjO
	 wIOYeClFrlD5yJMzdhYRtPGoxeU5ldViUyUu/HFCrrlufWnpaG4WuEni7Duuc/07lO
	 UjCXaEwBbYuHnKc412YL2iDoH/9rHUp9YpP3jEeJaqRtUHPUuInY/cUmwOpcPFpMH1
	 xyHaoJhVf2/UmS68OTu3bIQzKrxM2hiDtdKbMtwhjVontoYsj6T7mqTnR85TGE1laf
	 VT3FSt2LMo01A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD314C05027
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 02:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167625444576.24537.10237053932372895059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664dd1a08831318b19c4e5c2d1b158b5106db5dbfe57d1082bc9fc1f38fc52e8
Date: Mon, 13 Feb 2023 02:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676254445
