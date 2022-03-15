Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 975887A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 19:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647373584;
	h=To:Subject:From:Message-Id:Date;
	bh=gHoCB+pI/cml5DKTQJMJeeELxvqs8hF5CpAZcEZOYVY=;
	b=EjrzWr9JJw5Q0wB5AvMA57MSEgRMi5NLgIRstCyJucfg7/sNp76Du425Xk+bXMdh
	fXkH0aZ7WFtk+vosmUK8StwtACsBThhC6+Ft3tetzhub2F1uupivaBx95adw/V4HcEh
	GNZ7AOjLFpWRrE1CUbn17KNHNxZdqrJpwilXgUpg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647373584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gHoCB+pI/cml5DKTQJMJeeELxvqs8hF5CpAZcEZOYVY=;
	b=BXi54hBXuLhB+aiIW2amZGTB5LVSxA2ebzlPxtp8DSOV0CbirQogZmZe7X/Q+c5U
	RLYK1fRFXHR85GaJtkWeOI830NmnLVMlur2EWHwkub7pEa3bMmIuMApTmWV0lcoL1Tv
	+WfhLCBPp/oYym1O3IYPCcDXJTHnDtthDCUdWaxQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f1e0976-27569ecf-2156-48dd-96be-214717a7e700-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2b06a86200a8e838519ac98c77a775dc3c91d6dffd0a346c292bf96d030150f
Date: Tue, 15 Mar 2022 19:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647373584
