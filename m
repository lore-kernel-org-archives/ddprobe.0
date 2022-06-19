Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BAA7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 03:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655610239;
	h=To:Subject:From:Message-Id:Date;
	bh=+3N37gkbeurPNoQEmhb6OzlcJYhPmZn4LSvk4VGnjwg=;
	b=YKA6xD4ELmXg+uhM9S/vUfO6gNCSc9eLkoIXrbR5aKf0/m5F2z0IpPr8PLuDgNlb
	F8Q0mggYS6u1hApPPM/50E3k5Cd5RG5w4Ztewqwz4/UnHd74YOTHKwtAbhqluwaOq2A
	Y56i8XAl3QepA5sdnErEJ8Vy2gAGORa4tyqLn3WY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655610239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+3N37gkbeurPNoQEmhb6OzlcJYhPmZn4LSvk4VGnjwg=;
	b=XEzasFgz5JRhiYq84XdFuFriUb6Qs4gDYlYbMJWoWqyK9beCyf9ftvmuuAgZjR4R
	1GIH0iG24Sdt6WvwXKra7dvymDZV8NvOtCBhcn1rPWf+BNE1ndUCPjwCI9HcLvsqC4d
	vgeQnQHr2B6uprzgCrQ8AVysAHOgblH1Wf40kMbg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817a0f692e-5f3975df-df35-4b0f-a7f3-3ad46d38a4af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4d07cc193250998b889063264cd8d674c44d307f4b45fe8d3a1665927800725
Date: Sun, 19 Jun 2022 03:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655610239
