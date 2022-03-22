Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCCC7A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647936984;
	h=To:Subject:From:Message-Id:Date;
	bh=oV1w2oe8QCD8x3Uyx7VWHxoTLNkd8oMYhCjH1AfTjpc=;
	b=J21xJAjeju87pIbpytozRGAAVtZOVcUhm5yRCEaVyJVz9x8wxuAAcXJBVz/Q3dIC
	HJyQYIfG6Z67GH/Li35fBHP4WAJ+PPkzXY3wVIUMGDw5qNgdeD88fLupfAd/XoBN+p1
	oHS6IYscpqHScuNefuDOT6k01xJR/au8nlDFSN1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647936984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oV1w2oe8QCD8x3Uyx7VWHxoTLNkd8oMYhCjH1AfTjpc=;
	b=at18/XdeeZPQj3SLTgNkQKxyOAQSprX/S9ERiSs/4C2V7n+GKl9+9L0BsBswY0lN
	6XBMm1F7mES7SZ8ZhCj1V3rmKPLP18/YKvB4qeSEciBJ+sMSn8Kv7aUc6Pw0ZfHtdNE
	X/jIE/K2kxR0jIcTWy1Lh9BmxMGI1dDc6/hwnFLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb0b2d695-0cbaeae5-1dd4-404d-b16b-41ca9df0c032-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f4ae311c71e4076b42237f561c7863df3bab8da906aba053de22a9e7b8ba6e6
Date: Tue, 22 Mar 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647936984
