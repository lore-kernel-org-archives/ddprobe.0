Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061502917
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 14:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652280959;
	h=To:Subject:From:Message-Id:Date;
	bh=0i1YCNoRhcyY/dzcD50pVffVTdRXdtmbyRdRCkA7JSc=;
	b=Yox3I4BYyJpq+oCPCI/NQeGTg7Jid6sjUX3pE1lk15IMPvWKTvrGrSouFP020R6u
	pguaOrkIWffaFyBiMvix8ir8Lg1mMStE4h4u8euXqc1uBq4W3Jbsb/6sapwufc0bh6y
	rTZdCFOnvuQPkDBypfoE5CnVCc0PsKDSEykx19E4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652280959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0i1YCNoRhcyY/dzcD50pVffVTdRXdtmbyRdRCkA7JSc=;
	b=Nb9ePMJtLoHEPiVk98HeeDdSYH9zt5z7VigyGZcnn2QGbKc/wsH/raABmlX2WLDB
	Sk+EgfdvqYpUA7zWNF9KYndbgyle7HNH8GmXGJR4uNWFVaZGsI5DttA6Jrf8+Dpp+3Y
	Qcd0hvhUCXPWAQ6czPBT4O95/yH1LXCwKEqUhySM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b39ea1a1-d344382a-debe-440b-946d-454adc08eb2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6dfd2cb2ebbdc5c957efd17549342f015c4797f4c9e309cd3376340bdda3fb9c
Date: Wed, 11 May 2022 14:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652280959
