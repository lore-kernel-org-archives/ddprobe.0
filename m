Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F86322ACF1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744136394; cv=none; b=cuYSk72r3hfZiMYvv1dyD5WvI6MglzGU3+r+cXXHZZUMz0bb0Xskt2S43sPhwORkGvkpWJXILL9AKwVEdwF0l3YS0G2NDSciYNZdS1aNIvPpa6EabuUB3jByDQhFsvDzlhyC+JvZDAlVFUbAW7PAVxJUIdB1oZJnoZI2o3+1Knw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744136394; c=relaxed/simple;
	bh=6Z7xbk3CA5VBdCq19GMwiJHQqSFx3LZfgCiwmq0rTb0=;
	h=To:Subject:From:Message-Id:Date; b=meByWWWsAeyCiTXsWxLGbM8w/XbyBHLb1U1WZdoGlNfzXdGUpSusprqfXp5kTSErGABPSe1QoEpnGokPPPvGNqgtlGTEkvt69++bT9/0lKD2RxfNaPEc5+2kTD47QqLtgeHzC5PVCbi+Vw6RSc0XMoo1wk1FLeXVJpJ6olAwFac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O58VxjMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O58VxjMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA98CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744136393;
	bh=6Z7xbk3CA5VBdCq19GMwiJHQqSFx3LZfgCiwmq0rTb0=;
	h=To:Subject:From:Date:From;
	b=O58VxjMQZIFGPe/x+bbWvCygH1FxekpDqc05gvT5CM7tdyDTde9TOoDABZak36yax
	 8nVn2k6gkbG08ayBlZFGmcUu3M7qcL/lmpM6hpVXpvuC7jWxj6aDVRNwlQ34b97djh
	 T1/piyX4Equ2YNP6mM8U0URzQfHI1bfo++kjMGUh70ekgq9/Zhdv3yGWoaXXRBNksH
	 AGjGkSJXiCwEGbAAvQ75cFXabXh0Xb8T8zyo37f2dOCF2kYX6Z+mFQXy+FFfM/GIvZ
	 6C+Mw+5TlWjsfBUonBXI8Damxmr6W5M2yYgc6uO/TpE1CSTAvhSvfKDuNDgSMEjGpt
	 nSY7i5DNZMDTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96992C369A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174413639358.16073.11313527686691432170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91402aab2c8522368d4150e8285ec657c8a11af599957ee03d16167a4e270778
Date: Tue, 08 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744136393
