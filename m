Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501386AA2
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659657652;
	h=To:Subject:From:Message-Id:Date;
	bh=jvEg2CxpEAidSBYPZswh2MKUYVmdJw+DMPMabI8a304=;
	b=QsBPR5hX8ayldNLLIju+vjeGcyWCYEQVqq5/otxEKWQ6zlK2gQV5S4Opi7KK3Iz0
	ausdJ7qwZL5Knna7mKs1b+AwC6VsjfnucSUl0DNxUWyXOPGcMyriPS6GiK78lH7VajB
	Tr6EfaHrhSSZqXE061RhqVfyIwEXEOqxEhhgKxiQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659657652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jvEg2CxpEAidSBYPZswh2MKUYVmdJw+DMPMabI8a304=;
	b=Khq+Dl2amLqs+GSQ86eDPhIchkiWOIXBtugF55LqLXgA4vAyi5VdA477Ii6eCfbg
	ZC0hRtWS34CwsCIXWwaCpwIOQr0w1Rx/wk9Va/LBF5gth7uPYqZlSoppaCiFA/9FvpZ
	WO3umKVfzNJhZqqoP0bsQoP7Y9/2mr8mjCF1ycqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826b4e095c-287236be-4ff8-4cce-a878-61c98551d07f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f57b79985605f3e7ce718fa145e686e69e66404571e27acc2b6e5fad5693580
Date: Fri, 5 Aug 2022 00:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659657652
