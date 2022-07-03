Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC4E1FD1
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 13:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656853612;
	h=To:Subject:From:Message-Id:Date;
	bh=hKCnIxWkrkY/5aoCY5bw6ZNn6BoJiGQ36fNM71rftQs=;
	b=Mp7Cn+zViJOud0wNZvT93KcGnY/GfZ+D+vUwJdL0Jb6AWdKOPptotML8WD6YTLr3
	pYaAvovHqWF9oOiv1EVrHpzaJlFWHqbcEzXXub+oBxNX8Lu1Dz4zmQ30fUalzpejBM5
	I6z4ZpuLULzK3T7K8RUJMxF5PkIXxpD9H3ePTzbM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656853612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hKCnIxWkrkY/5aoCY5bw6ZNn6BoJiGQ36fNM71rftQs=;
	b=TKWKPlIH158hCHt4ke+HcSJH9B7rGZLby3zLf7X49Z0xEtvtdKaZNGMZqOZS0lyz
	TwJmkamJ7wTMSUyKE1EiGTjVSOZm9PJANjWcXHzI4vqkOTtm0bTgs2CaJzaF1GmTGaz
	+43kJjW6TQVni/4srM1ndmrmd5M9J60KLg4B5FMg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c42bc6fb-3b71dc9e-d156-4bf8-b1f4-15afe2fc2818-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9afb9beb9b82496593fb70c659123bda112761acbe2e37028f32943382ff503
Date: Sun, 3 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656853612
