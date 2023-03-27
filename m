Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5364123DA
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 13:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 078C0C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 13:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679924586;
	bh=1NgPAtevdMIwR4kZ8YsIOlqi5USOrpoFyf3ifa2vVqc=;
	h=To:Subject:From:Date:From;
	b=rQZPJfGs8R0R4tPSb94OoI0oc/CeqmtCx+2iiFujLFjMoQOP7d5mZLko68svQRxNK
	 KrsE5dHqwGAPxA5JKIcRiZWJrbMzEwkpo6XERomMao8xUJAE/prrHUS9kzvubuBF5w
	 3j/MiKG+4dfM4HHAO/ucLttntDmG+nIUM3wWSWkOjvMJvjrnH6x+TOoCRfVc8qNtF7
	 GqAp9Lzaj9XMFo5CVlaeb27yTWSAbmAF1f8Yyc69Jioj7OROk+3UkL5PtpdPCS8mrJ
	 wdLLkFWS6EzTa1AwdpOT1FWazPoqeDCHFhneQ2kvzg1FH7XjuyINUA1FXTOkUkuiRR
	 MTqvPPcS0Kf2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB5D0C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 13:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167992458588.26066.5082701539827939014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a684441634823df214aee0e39ffed5b14b9d91faf70040adda89f0c2e975bdea
Date: Mon, 27 Mar 2023 13:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679924585
