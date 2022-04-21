Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAA61876
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 11:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650541018;
	h=To:Subject:From:Message-Id:Date;
	bh=z9a0ce0+pBA4zdMiqclIPSgmIUUUc6vpPrPzfThnRA4=;
	b=UZmS8mdvAcwJ9QgJLbvLHQwbe5xZdg29gucLqL5cqJ8efjqcA+UajSXh4kJF7zum
	wF1sljysYQH9J9XiDjSi8zVoowzwqY+sM7RMxQr4BChzSK//W/n5THGm/jiguMPMBwf
	IkM0KesVAOqs2biyMEetSzD+qc9GF9Wzj6Za5xN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650541018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z9a0ce0+pBA4zdMiqclIPSgmIUUUc6vpPrPzfThnRA4=;
	b=XI8htg9hIL/+lLG7fyVbn1LbPMYSatICZaqUDcGu8MF7BzdxhMrcOiIwYTA6D9yz
	0KSc52/nvo4hLqtsRJHSwIbulwD7KtC8Y1BM2XTYCeXbLOxvDphn2QTX1vYsdiAkxEL
	cWa9DNi/RH8jBPl93gH4eZE330wp8+/S/DT4H8VI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804be93c7b-3547f272-ac32-43e7-84b7-183611182737-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4304b7d284d2739f424c77057c96d9a25c051198771eddef830525a975b447e
Date: Thu, 21 Apr 2022 11:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650541018
