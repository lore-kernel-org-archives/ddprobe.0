Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D28E4C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647619285;
	h=To:Subject:From:Message-Id:Date;
	bh=nrxEcZwJ5BFswqK39CyquYu4Y70VFudqh3pEOXCz8g8=;
	b=SehtnmI9/JebXOLeEtGDuvBfZFZ9a9sZ3qfwnxEvxAmGNS/qStEyBowJGAgbDE3n
	AIcfmyIixs1Je5Rz34hwTVDaPs5dIWYo4gvP7NrKun2KveskLTCrv2pUu6eIEgT/46X
	U1AgDjAo9vwL9DUqD/bFvgJtvusFoxnC1nrOFGo0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647619285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nrxEcZwJ5BFswqK39CyquYu4Y70VFudqh3pEOXCz8g8=;
	b=biSZdTrWImsG0pZLxdNuOgH6w9ou/Mxor4lC0hpCoDp9CKIiiz6x9zsF61FOeGW3
	0umP3DAkc4djtGxEohrPjyps7HgKT+Vp9kzmNvR7CLmRuQUIbNP2aHgbdvQLUBnfJoQ
	EKmwplEaMg0UZV7k+Oa31xiAEssPqQmFzvCY5D10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9dc31f4c-648f31b2-7db8-4d8c-b544-d0dec22407f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36e33edbffad7629a008ca34f3e21acbd343fb60e16e05e45d4cd6f542351def
Date: Fri, 18 Mar 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647619284
