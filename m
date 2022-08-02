Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738587F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659421252;
	h=To:Subject:From:Message-Id:Date;
	bh=AOhVKPskWdZlHA+fPDEe7TMuCWHODZqGIY1g8BwVjRs=;
	b=VqV9PFtxH8UDvn1clnlLwixNHICLccxieS7rh4F9T9JvfsWkN8CXkG8wha7m1+w9
	5ACtsf1TsNGsyehDZvKOvehGufsPngkak++aHAo3+lVb7cIrJIrxVWSqp4h9oNzWcdC
	RjjA2re6jQ6XqbOOgPPalgP/SnIrXu3otUBCHuCs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659421252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AOhVKPskWdZlHA+fPDEe7TMuCWHODZqGIY1g8BwVjRs=;
	b=gb1KSjYYTzKcK6Ksb3dakF4upLN665xCSi+2fXwgr1QeqsGULzxE6pOLhRjfPFIT
	ZSCY/kn7l0jvHYmibpOMQ63GNAShvlF4V+yp1EBx2PdId91Z5PEnhSMBlO0v28cBqyh
	VgVBDiHxr5VktWi/+FpzMxvUR23Kuh6Z4kgZzhXI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825d36dbf8-5b8981a2-ac63-4d27-adaf-0d21ed2c98ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1999b92b1b8df970b4e706346f3696abc118f19d7287e018848926b01121d01
Date: Tue, 2 Aug 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659421252
