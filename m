Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083B82901
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 15:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650642718;
	h=To:Subject:From:Message-Id:Date;
	bh=erv/T4x1K5RojBvaeWjXNndRLSTgUPAnTYssth4qMOA=;
	b=WlfT50KlWlAwD/m8IbVPePWh4ZmT7L5Qmj3DwVQqrk+A1//+MnT1zXzs/R6G8NBM
	aR5GdARNM0j8Z6DkehOoaACvskVYOWKGon3sS12Gl8ShWFTmQjry9fYWRX0HMT9diQT
	w7bumRdQxaU8+eAu0MmmZO6D4A/HZ2oJUbXTooHA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650642718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=erv/T4x1K5RojBvaeWjXNndRLSTgUPAnTYssth4qMOA=;
	b=F45I0D6zze78Fog8WILhwLBtoAV8gj00uQXSyyW1A0vo62mq7aM94kGZTyjsGb6m
	x6ZlaWXo5A9pICqlkBHX3ehA1mAcD/PzPKyt68RY47Fl3a6jMx+/gqdTB/4n75+bXl+
	RpSgFUmzvtgv8KBoHbFONj4dV2elAXhrV5lB5MKA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018051f90e2c-0385799b-bc43-4c8f-b935-ea4c7ba4fa61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a283297b6a07a42f5196234929a978b54f2ca5dc797da618ebf92d6bfb62e06e
Date: Fri, 22 Apr 2022 15:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650642718
