Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C50118E
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660094452;
	h=To:Subject:From:Message-Id:Date;
	bh=zDlaM7jE68j/IaNjpmyj2kr/l/TcANxcL8l5ceC+y7c=;
	b=XXhlHhcjIDZ7t5+z+pjLqU0jDxQmoZFzFT//Jue3Z/shr/5Ws/bYoUjpvBb9upYR
	L1Y0I6TFimOSY12Iid7OPsDBO/Q9JTp5LawQfO4iKYbFmzWqQN61aTAZ2plMcOTr4wv
	IrCAiyW30Nzpxyz4VV/SFpiSOCDRlWseqvmsrnaw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660094452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zDlaM7jE68j/IaNjpmyj2kr/l/TcANxcL8l5ceC+y7c=;
	b=Qz/r1VYgFFyCNms8WJ3Q6p5Zj9Thv6AWMfgX2PFC0qBYOpZX/V6URXBjb5U//PFI
	3JZ0fyfjlGf5PyPkpoUZvxG9cIdywilTNvLWaXeaJ0pmheOC/SUv6fvIc+eEc/s43O1
	u7wWxK5wxVaHBMg8LP9w3LrGk/flftWvcF9GFfSU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018285571370-a65646d7-dcdd-4cf8-946f-7cb803eb1cd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70a3b1cc948c01c1543ad9b3d6308b8da50a5adfae99caa80fdc3a3a88f83c19
Date: Wed, 10 Aug 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660094452
