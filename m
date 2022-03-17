Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A34D74ABB
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647557484;
	h=To:Subject:From:Message-Id:Date;
	bh=7GIUyO+pWGX8fbd0NGBr1rGafDtSjosTPGaaL9z0S9M=;
	b=IhBMuBi66hj+t27scGlaKMFm+nV5uisF6yK28MIwPPRr3ajfPgyJIfVxBWrG0Q9H
	qP50IvX9mt5d7q6bjztXdJowWu9uurQanOi0dT4ldmVQPnOTl2SngU1JH7BLKmvq6nD
	Otzg9+SzxtBwt6LXIlnWL9ZO3BWf4ElNM7w/FILI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647557484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7GIUyO+pWGX8fbd0NGBr1rGafDtSjosTPGaaL9z0S9M=;
	b=CAgNLbn4eF9jCy4+D8uhTrttm1f/zJdv8nNY4qc+t2F/WLGAqgV+RqkG/Ovg0nkh
	rFGNo6wGEvHxnpYHBbhGwQeXCK36VCW/9L8YbjzEV0mSugR0ZmtYLBYA+8VnjxChC+2
	fUD7xCRdDdwTwaxM1/EwtL2O/F5bGXAlfSbp4gf4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9a1420d1-f84724f9-cd0e-4188-9ee1-7c37d686dcb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb2f46a41dbc5d66e00bfc423e46e1a90d9bdcda82db21e216164f92e18a6155
Date: Thu, 17 Mar 2022 22:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647557484
