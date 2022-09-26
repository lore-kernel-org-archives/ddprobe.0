Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9D24A04
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 705B6C433D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664229653;
	bh=HPxUngw32eqAj+ttyOSARycmV/1pZFR5w2Qm/6I9pj4=;
	h=To:Subject:From:Date:From;
	b=LefTDBsQUMQSyXXvUgH2a7YIm3T8sy7YsT6fXqXGE5PZClZxfLVJ7bqX/gwbOVagW
	 Y2tnohN5nywDwkswgDJ9PsGKOEt6RE+foqBcHJYB9D54XuC9P3EMTEVZtjkXdiDq7R
	 kH11qFQre869wWQJe9NJAwGOEp8e5H3aY1DXGeHdqxKorIFN2nFLeNhl0qwtg1Zwxm
	 hnT2NRgo1Liiq+v8L2ilOnA72pSTNuG8lTfzQK397uteDAHFU3MzOkUTJdxE2CvyM9
	 oNz2fT+d3CgBBlAPLGeRgpdU08Ug6NVKA5wghPPAW0CgI/yedVbwe6rjzZaXNs/dUf
	 C2KfveV1e+r8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55121C07E9D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166422965333.16432.868847591478015650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f05e3cebcd16191e0b5e7889038e663af85d61a6ca87bdb0c15a95601441f20
Date: Mon, 26 Sep 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664229653
