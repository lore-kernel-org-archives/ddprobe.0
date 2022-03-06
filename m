Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BB967E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646600484;
	h=To:Subject:From:Message-Id:Date;
	bh=4bHNpponvY6QzstDQujSQ2fiaS99rT2jZV3qS+UuRDY=;
	b=dkIwIPmLhSwFRF6uwTmJeT4Qn4CAXpeC+qa/C/JByvHFuTCiOcyupY8Zohk+IhQN
	z4KacT++2kF/05icYWK4/FU4m7HvzKXxy/UsTxsboQ5DMnZnpOV716CJ1S0NB6tEpNl
	4FziOfYYpuKlxLzfBDDUMU3IU3yfCgPIYVzXXtJo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646600484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4bHNpponvY6QzstDQujSQ2fiaS99rT2jZV3qS+UuRDY=;
	b=BtGUz1pahh7DJdZsFOUjh49uFL+abMx+2fQygxYcpeQAz+NlOyNn8Fl3uwKFkr9v
	wU5Lcapvf0KSPSQeZtiurRgpWiZp8fEcAjWMzsb5nbYYc8lh5/3rdYfPcXNnERz6r2O
	pzvgJfrNAXLk1RUrflKMTbXh8ZPTIjXz5cpipwbI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6109779d-6c0e02bd-2610-4e5f-af33-8072206780e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0abe6e4d870de9fbafefa7f2e82ba5e182d09b595e3960e4feff24bbd1f2a09
Date: Sun, 6 Mar 2022 21:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646600484
