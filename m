Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D8B10F8
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 03:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652757779;
	h=To:Subject:From:Message-Id:Date;
	bh=iTdqHhLzx2l6wyLY8Tekz322+cwxD/E6Fn7d3m//K8k=;
	b=ev4KzOtfdLhK8UzP8I2STatZrDMrdS3wmbLAl4sOVONZhY9C+vG5Q4dLDf1Q+xND
	1tulX2h48FwKUmqs4JRD5OrwZ3KuHFe9inFGxL+xRwDXiMFe2FXqxEOhdRY1F0x0nJ+
	bQBpeNQh+boXUa1/ZT/xRLjYpCZtNmkP1Zw+Gt1g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652757779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iTdqHhLzx2l6wyLY8Tekz322+cwxD/E6Fn7d3m//K8k=;
	b=P/x2PQFJ7rp2btc+GIq1gVNMIzn8WFxiw6pNbBRAP7jGm3gFYkaYcqCTPGCg4QF6
	XztllOUKSuf8byNChOv2Cz4c/kj79bV9r26Yxh/uWoScCidYnGt5UGrPZqzb3vxHfLp
	ml8sgnUv9jQz9R9MYn44vo8DAP/8G//K6G/MSDpU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d00a533c-c6576cc0-8138-49f9-a366-6ab3ed65d6ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a58ebc2b6f7226bca75892c4e8b39456e5d21bde0154768ad9dbb23dcba4450c
Date: Tue, 17 May 2022 03:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652757779
