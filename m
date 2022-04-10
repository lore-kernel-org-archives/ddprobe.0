Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EF4A20
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 02:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649559298;
	h=To:Subject:From:Message-Id:Date;
	bh=TLEWxm/jX326gbDCj6dQxmIlevrUBcvaQIjDGHqpD70=;
	b=O0VHhc4R52/hnF6OOuZ82o+w3W4KX5KHydxrTxr3HNsn6IsDtK7xjDOXMap9Huvk
	d0w6Mdw0U6SFk3eYmwpRZ0f8UGHup2SBM7RxLDbfyROpWRiR3SQS0vebzKaqlzewWq7
	fujvKfHU7uPfBbNKuin1Xz+idMJQmz2RJoXbPeSU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649559298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TLEWxm/jX326gbDCj6dQxmIlevrUBcvaQIjDGHqpD70=;
	b=gwCEH9V0dvLYq6v0/0mMLg2BM/dTaIBe8Qvcq/Zkw6YZhLgWpiGhaJI+i4QP4Fnf
	ViQJNdgORde/TbAibBGg0nm1orSM61El0MXueTFdBngQLDWI+gLjt38AXt0DSKT0yuI
	39e0DeKo2tQ+K8oncFeiF2udVg0/1TNyzboz0mLo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180116560ec-f1c70980-8c2c-44f6-a5a5-ea44c759499c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04ad1291216fa6c375a23f9d9f8b598730578600d555e001eb6a4922ed107bd5
Date: Sun, 10 Apr 2022 02:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649559298
