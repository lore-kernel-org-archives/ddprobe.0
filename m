Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACCF117E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 14:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647699385;
	h=To:Subject:From:Message-Id:Date;
	bh=vrmPDfOl4tv1eRg88fYIOuXpsqWtSEWVq47P1PVtPuU=;
	b=Lx/klNb234RBCuzDtjN5A+s+/8LClTOOWAQd+KGrEQfk34YJQxmD/orHqzEiL0zK
	fhPB8wt2KQX0k6Olg2kbGa2WgY2nwkxw/4bvpyP9ek/McTZWBjj3RZyUx73bCYlL7Ea
	2wIXYbYb9sMccqWajBbIIbYyDQmLU1PLEc+Arsp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647699385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vrmPDfOl4tv1eRg88fYIOuXpsqWtSEWVq47P1PVtPuU=;
	b=avSn2oRxtXh52WRZVCAXyDwNdGiTaprid4OpzevqlO7/eFbiVqv7oCoGAC5WKpfu
	HFzizVZ+1Ldx0lqxnFnahkcOeYNVp/RuNqupZcQDSMcL/BroQHoBpwwbzmsvq3oyZkm
	hpMmw9Hr6ZZomchQ0O+opoh2tzAvrW3A5Oc15Hcc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa28959c8-0a2c8787-2837-48f7-8a05-e9d2ec5cd366-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f2b31ea42ea709e96838627b49cd9002198ad016a192933cc667f2a96cdf826
Date: Sat, 19 Mar 2022 14:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647699384
