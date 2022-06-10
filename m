Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628357A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 18:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654886999;
	h=To:Subject:From:Message-Id:Date;
	bh=ze0Z3eFHcZRnewS0/70bUk9ENbDna1zpy/dQyPABvy0=;
	b=Hhzi0RCCIujVl0It+jY9S9uRrOEVVw3XdK2iKqLm6pj7eKZdzIk7sZk28gAHIj6A
	D7kztFS+x8rbTJFGF5DBPABmCS+EBavQsHNOE9pYJaRMihBWByOiFKEBo8zgNGcIGR8
	ZgwahGhWj/1R90k0kRbg2+Um4P22a+3kquBcwACg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654886999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ze0Z3eFHcZRnewS0/70bUk9ENbDna1zpy/dQyPABvy0=;
	b=FfJ0QEqqoBuie3S8KQnawl0Z/Y1r4fjmORr0+0mP1EL4KrMm0+lVSY4XhKuvNrg9
	CETP8EtjsjrT2UeX24rf9yQvCXvXrELaazvsPwzdnaqSsdoQ3sBxUN/M3+LxFHgU73G
	jIDvlP+qTXgQsR+G99yKpxwzqq2J46mMJsyHDCeA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814ef3a4f6-52958467-5180-4e49-885a-44d989b1c81f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2023a1807c27ef15eccc11e83886d60d69c757f4b25f22bd66674e5db70b3585
Date: Fri, 10 Jun 2022 18:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654886999
