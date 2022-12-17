Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0C8657
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C12C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671261687;
	bh=giGz4TIHyoIyZPHrHhS5qOTNh1xsRXRJcOhu45Ob55A=;
	h=To:Subject:From:Date:From;
	b=q9fVF1xvdUmltBDJabt8TuZAd2WFn95NamaGcQq7VA3896rfGUNO7hNsmcXUEFVso
	 tXBTMA4+9eagCRXsFWJZ7+egYeup0p4IIti4CZDRUY+5vDPV2j5yy6kOSspfGTnTsR
	 RLy2AqRXFyY8SALcTRJ19XbLL5Q4SgC3udTlEIEUUYmjIMEphcidTx9DxkB/QqaZQX
	 7DMO3qaJz+ih/4480SRsNv94LnXRg5MWUmBs2EnL1caJTO0YsBmF3XM/x9x66CGASO
	 eN3aBzx8B8IdICoUMqAsCvLbIZwEfxi6gZJdKfPRZVJ+sJTNSMpnz5P0Nu2jhhpm5r
	 n0hfkon+CHU8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9246CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167126168753.3567.17895489843613497051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe51ab585112602383f1db6e90178ee4a5707f9a2fda45b844e148dcf76f3884
Date: Sat, 17 Dec 2022 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671261687
