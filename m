Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 968847C
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 11:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644836445;
	h=To:Subject:From:Message-Id:Date;
	bh=67AaRx8MbDr256wizCOPut7qKSn0T+E90s/bJbFyNSc=;
	b=E9ujnLnHmBTuAk9x5nguJubkn72cd2gnJLtURUpSV7DJXuApggjh1qfVqC/d8NPv
	rsUcyFY+o1m1T1hvbC6QKp7FdhhD4e+WY7ziD2EbwmhM6VhKsg1LEOcayv8+41uI1U3
	IX/mPT1B4rrO0F0/pKfAcs+b1J1FapRNQd35dMv0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644836445;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=67AaRx8MbDr256wizCOPut7qKSn0T+E90s/bJbFyNSc=;
	b=ESjqQXxz9KGz18iSeOBhekkmER4vcEN5Gko4awgXSsrz/Twai9YjfzwEEFNcbg2C
	+2JziflXWXrvOiduSakIRuLdVpgR7pwBG2A7pEyLPufSULGwRZXC1V3Lh+qU7THD0ox
	WqTP/pKqegeQ8ChiKStr1xI9pe+L+aDqid60wYxA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef7e45b04-b0c00be4-8c6e-4a5c-bc55-ed8ab197c314-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac68e6a0330a546d5886c5438e8dfff715fada02bac8b7b30d4589db6a31e987
Date: Mon, 14 Feb 2022 11:00:44 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644836444
