Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CF71851
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 10:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653647699;
	h=To:Subject:From:Message-Id:Date;
	bh=Vir+SCrk60LCz3hKFkugqwlyqFTJcLD2fVgcyiV3EIQ=;
	b=VCB3wx3QunWRXqAtMDNZQyQUZL72U7888kLJKw+pLeWNmnt9TOF3oswSJAcIOZBE
	ePOa53rk4EPx55sw7lxxELNy8PhTra56W1cY1FXFtrfZ7WhkN7f9pzliUOnbeJeRfV0
	nuXmxgRC7LcpqpNJQg8vtPi26EXeiPApukmud+a0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653647699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vir+SCrk60LCz3hKFkugqwlyqFTJcLD2fVgcyiV3EIQ=;
	b=j6QoQ/DPW5RYto47Zp/R7Gq01Q1cWWlY1nCClQGTstVD7pveO3HUlkzk0ZdD/Kfe
	57pWx1NRrIx7/DmlsiPVZrArNH4meh2CY9fqLWdLSee/5Lt5lVpm30wl/iftsiGv/T+
	ROXRIj9WjFPV0Sza/BrPBs2kFzTe5M/O3IZ8FDME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018105156d2c-6ca3fb18-c767-444f-a160-b398e3ce6644-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3690eef11ace7127685aad3a191849031962d0b76f858cbd7293762f31b65b10
Date: Fri, 27 May 2022 10:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653647699
