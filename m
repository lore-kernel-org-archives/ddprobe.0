Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1AF10F3
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 03:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656644812;
	h=To:Subject:From:Message-Id:Date;
	bh=NWrTXB5zW3ljnuOp/W3zdkZ4ZSIJQw2baT+dT7yosAQ=;
	b=jnOwi6G/YP4bgcGAfgoJKNqo/00qSJKV2LwmJk7VX2Uut9eUYBjS8R7F3TMq/wkj
	QNM0MdAMJa6Gldopu1TCwgTA6A5AfA/5oV28D+K9bdvfUSFVY9ijDLYfwgUG0D66AHv
	IKLgmfh0/o0h3sMFLLF81jIP89qAM3qOkOXRaZPo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656644812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NWrTXB5zW3ljnuOp/W3zdkZ4ZSIJQw2baT+dT7yosAQ=;
	b=PgNXMt02fooKFGNeSV7DTMe/zH0xWRO5YClgwnzheYq4Xhb8Jo57D8oHo1kHhfwJ
	FsTYmTjCcpMamGL+a3N5r5O12l1DRl7Y7wBabXR9Kl1LisR3VSVqaCYnHuE0Sg0db3K
	1l5BXCNHOc/Jt1vPwtK2xRNqfp/umchvDNLv8k9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b7b9be28-59cb514f-8282-47a1-aff7-8d6554149e40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8f6dce8470e9d42f399a9f5ccadedae3908c9483b45768d66f9e3875fda7655
Date: Fri, 1 Jul 2022 03:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656644812
