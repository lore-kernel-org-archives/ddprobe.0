Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A646EBB
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 10:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656583612;
	h=To:Subject:From:Message-Id:Date;
	bh=6vzrD/tAiOpUpfW7zAoAYY3iTHOK1LuLiyv67607r88=;
	b=WfflUSPxYWEGkvp78P/zvGpKZ5W5vJEgkig33Q1hJAhuWDQv8WT/PDDpbwko+NtC
	DrVXVu+Eicd882SvaLbMTqucSmj72OScXb+X/wivM6/92jib1qLMQRP1IqET8edRKEM
	dD0V3ABiYrjHmG6Xpt4NioapuDjy10GasAPiHfZc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656583612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6vzrD/tAiOpUpfW7zAoAYY3iTHOK1LuLiyv67607r88=;
	b=KfkuCS5xGXCv9+VizoGSIn+0FcSR1gv01g8efs0uu7xxnAgwPWlfcoNqPHnz4/zH
	VkyzozChqnIoOze+NGsQs41We/IqclnvEueR84FCO1lLszB+JXhiV47P37jVY6E4XbO
	gqwMQJ63+pIKDa+ZpCb9tcmwJUbQDagry4F0Na20=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b413e7b6-a0c941a7-3305-4a34-ac86-410cee684a6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e4966ccdb33f5223cc61c21cc03b40f15590fc1a5ecb703770127941b60e208
Date: Thu, 30 Jun 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656583612
