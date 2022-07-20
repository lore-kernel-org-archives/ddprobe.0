Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7267475
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 20:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658350612;
	h=To:Subject:From:Message-Id:Date;
	bh=XB7NKg9BInk+ntnB4ASDj9QTEHDJPUmYjszNmup+/3c=;
	b=GVKFUCzpLW4qenrbb5vniok/n3V3PTBGgrUvXMxmEbU2id6wSOM4720aThhM+/Ki
	vQBb2jxEUhoIX6qjrvjgj54L5sLKXdIqL0BlrIkvIFrIE5Uy/7+Bu5Hhh+1eIDQoTMp
	3CwA2CWKgmHvvF0uNI4SKH3rgrZ8D22tgyPJxQCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658350612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XB7NKg9BInk+ntnB4ASDj9QTEHDJPUmYjszNmup+/3c=;
	b=a1U1u4hOiUVDTCRQE/9wWSDhZljzRVbFvj57zz8sDqUWQXZ/TCsH6BI7TjWtJxgf
	RE4nu/up7u2jb0nUQELsfaO3K4pfgc0FJdi1aNn0upjoLp0oZhkiJlGzPYZyEuG6J5Y
	JgzGm8fQWMvVKmWnCWFFW9FCzoaL8Io0HPJhZ5oA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821d662f3a-ab5909a8-b791-4f92-bada-ccd08ebe1d3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32add32c2477fe6a7c39e9a60b1a0ad01d9a093f93a0405ef2084cdf685e8928
Date: Wed, 20 Jul 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658350612
