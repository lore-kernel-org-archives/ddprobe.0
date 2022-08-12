Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8782119
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660326052;
	h=To:Subject:From:Message-Id:Date;
	bh=QxX6z1I8ENgrjlmMuPSPBK883n3/zxs+y3WqvwXjAB8=;
	b=TgCSGGod+EeInPP+enoV+U0xeA07ov9BZqYXcsYL9AOZPiJZYBceoqwOQRQoWwlB
	5YqzMJL8b4Fs5wH8o6zY2h3Vvm/7KHkcY3Gds011K/BS+E1rXDrldxGc4V8fcPJ5fjr
	BJ2L1rWnDiKQcwqI+ksbfu0gBAVUcWE5NbayZ8wA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660326052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QxX6z1I8ENgrjlmMuPSPBK883n3/zxs+y3WqvwXjAB8=;
	b=Qf+VjyghOHatLhjexPvbaedxoAwyP0DjhhK/T57BNGeI7rWo/uGZAjf1u7PzvHda
	MrAbpIkj9tWR7QVE+ZGeQ03Bie9vGhdqT1zcOmoKMKhF2fyBmpFpUR1iRdgyx8FLp09
	6SXPSmoujwDgpvLfAH/UuZ5SedYfhpW7vzSm9ez8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018293250313-0d1b3b00-0fb6-415a-8648-6d90dd4f3f45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65e715963e70d2cb252f07eb52974b88432058b896075ff42d56a04d3899b9b6
Date: Fri, 12 Aug 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660326052
