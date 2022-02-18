Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5249728E5
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 17:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645205784;
	h=To:Subject:From:Message-Id:Date;
	bh=O0WLusyxVy2h4is7oKO7/29we/EOqk2X9ipb/oFh+eA=;
	b=il3Qe3SkGvZ4YhMUOhQSdr8DJgLwYGCblmQzIlLbmzYomM/FIRubY8wQIZf7OMIL
	3PDcwcYF6juCfvrjz8f3Duz0Ky6TtccA33HIiORIz452+QSV7zPjTM5RcRF45V5YC4K
	81/yqF2qdk/OeKhe9JCCUkdR86tz4EcT0urpXlv4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645205784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O0WLusyxVy2h4is7oKO7/29we/EOqk2X9ipb/oFh+eA=;
	b=ZTVFQ0dH7c7t/7fuZFLvPKQRvW1wRjvxLOYPEF91FDvY/fSzF94/w6htxgobHMuc
	b5B3sJ1vyY92PEhyehrqpwKPQTrSDdjh7zzYyRBfNigs2Jf82cev5mx57z0nKEMjtuD
	BLQ7T1or/kor7ihhfW3DrO1vh0FUBQ5etoeaXZQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0de808d8-24349e0b-0dfa-4234-ab95-19a57b0125f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55ce99528ba93b04703fd6de37c51e2f3469e0d17c570bf0819aed40c3317b75
Date: Fri, 18 Feb 2022 17:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645205784
