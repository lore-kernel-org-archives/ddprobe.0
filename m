Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280457460
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 23:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658446012;
	h=To:Subject:From:Message-Id:Date;
	bh=HP7leZLNgR8Ub9M30IyUcK2qJxaycp8Ilo1iqsOfCsI=;
	b=g4ezKdJA2rW8gGMciyRq038Qll6ETW6rHNPtuPzP1cKbHIygu872pAxYczOMaOml
	Kpso/PRQkn4HxzOKvzrd2mBEPKc0PTdclBUhYl/863DVJ/BlQ0IPr15KbD5ggyNnM1M
	NH33Qt5HcRc6zqQsYOiZXleo/vMRywL7WHsjdank=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658446012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HP7leZLNgR8Ub9M30IyUcK2qJxaycp8Ilo1iqsOfCsI=;
	b=epsUeHlSfdKKmHf0yAj8PxV5HNA83reBOQaRz/mUtswrvdlQgmpcJsKKMqwY4f1L
	4fnCJgu7Z29AlfNQpB0f5Nf3u7Rk99QvdThQQv5ImeBeo4rXpv1lRiiMjWgWNh0GcZ5
	OusxHzSf/c7T7GuZ1rDR6+6kC/Jv4SP83luvmix8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822315df9d-c108bc1b-707d-4e21-bb99-3234046ef393-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 440f16dd11afb545b2dd010592808c3bd164882315ad339205c3343bf8f13164
Date: Thu, 21 Jul 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658446012
