Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3240D7F
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 06:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651474318;
	h=To:Subject:From:Message-Id:Date;
	bh=E3mngXDAK+t9v03OwRxXaqNDCK4YvMvat+91TB3WHSk=;
	b=Oib1zyqIDDnJdqFv73guSeqTUicjgCyC7XvyI+I+TWpJDZawgRJiTChYTyvIY9xc
	aDD3yfnsQ8rKyT2oGJ+3arimcCRKONf4wLPWB1qR3u2Q0adj25OPuFFCyRvK3JhcHkr
	WGoJmbEgSX00exZIQneYq1HMmvV+wWWCM4L42xVA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651474318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E3mngXDAK+t9v03OwRxXaqNDCK4YvMvat+91TB3WHSk=;
	b=P5rcUDTg7JfI6HiNCbpzZOoRLQWt/njUr8QfYHj4yE1eT3FhChe+E+epNmCd9RLE
	Yp2b7gGdxSTw3kOlKnUOK/L+P6/4kpCd6kf7nDzl3JkRn0mTWCgaifruHXY2rWzmfcm
	xAwXMKqHyKgZGyxJ9t5uCJuD2Fsd0dx/j0b4xOlY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180838a43e0-9b2331da-e518-4b5c-90ed-768014f83a10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ba1a10652f887d5e347def39060eeea817a617e132279951c46b9634795d4eb
Date: Mon, 2 May 2022 06:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651474318
