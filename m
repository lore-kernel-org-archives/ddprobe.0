Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BC5F7E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 21:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654290899;
	h=To:Subject:From:Message-Id:Date;
	bh=Cz1jEBZydteSpYRTnDY99IR40adnZhLyBMY23pR6n/o=;
	b=QxsrkgTUNJvW6iqcRzIDyy0ezxKvLTsG3IGIYAhxYL2IQ+Zm4qeiT3s5nL14mlAq
	KeSWCIXFy/hb8/OnRtlPqoIO+2qmla/6v8NUfsAa4i4ukCwODDj4ixidrAZ7kGkNqya
	ZywQjSBOHez8t++0xsu9pg0Ad/4aGZ/2FI/AQyhI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654290899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cz1jEBZydteSpYRTnDY99IR40adnZhLyBMY23pR6n/o=;
	b=IEqOTzMLkiZvxwz8Ky+QZbHIy2xuc4g0DGDBczyHlzKDfN5SE+BOClA6Mt11yAf/
	/fnk5680JaDPuTh1MJVWFWTl8fb+Qh8U1LlDdNLrenr6LheFbdicIwo97Mo7lPuXo6B
	CMgyNasMOOJwxu8qHt0T1kAcoswMvpLD+HPBh1yo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812b6be156-78936479-be50-488a-a09f-14ee15117d89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 165dc33a86dda1ce636fc83d159116ae896deb2ec273b7496bbf131f426e3e6e
Date: Fri, 3 Jun 2022 21:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654290899
