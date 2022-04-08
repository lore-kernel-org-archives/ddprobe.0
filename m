Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3A8367
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 03:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649389618;
	h=To:Subject:From:Message-Id:Date;
	bh=rsokhU2OhqPPleypTtmOdY7phnqxYj77b+smiFFFS94=;
	b=e8d3mR7fjOXuGRuUDERHK5VfYTNsR67E/++uS+WJK6MskF0tj4GdR2M+NGkEn+6b
	7Ympn/ACEkxNt1nrGD36ivwRWJmW6QF+1rxRV9nrjyPkgr17kNDHDwHNAPOJiZDc2zX
	lklR6ROEa+VCXHtAd6KgZ7ILgAa8oCBbPBhc0FLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649389618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rsokhU2OhqPPleypTtmOdY7phnqxYj77b+smiFFFS94=;
	b=E+Jb4rOUIa17KLGu6ejVuKLIsuvDSdKwfSLB+9mo3RP5tlZah4ft3WRnrfC3tGad
	/yBTrfmFoUm68F53DSgpD8y8oATE83ZD780fhWeJur2P6/3XkTGijRZ7XOKcYOkCS5h
	kY84oGmpvyz5BqVSrbdcVZ2BekXS6aqMqyZxGRmg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180074844a1-305069e0-da8b-4125-abd8-bd8aede5e76d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e52362d9d07c4334638ef1a75c90b3bf78d76e57abaeec9c1275ac905e4bb929
Date: Fri, 8 Apr 2022 03:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649389618
