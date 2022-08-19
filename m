Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9C3193
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660872652;
	h=To:Subject:From:Message-Id:Date;
	bh=Z/GBYnsZfU0jy2BWwiXAHjASSEhPVX7ZZZ/yiSLu0Qg=;
	b=evGOfpVMrcCRLfr5cTo1A584Lwc4LkKiWW/Tr/+x6qtZlzDAmfWElqygST+qWeaC
	HqD9Sjdklzh9jFNplbNOusT2PF6BNZvk0WCB8Bk6mIyPDTq+6EOUsKiqINONF7qLCZh
	16juBk4g5ZXHZCHmB3qNqOh68VQM3ISdQY1T4TtM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660872652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z/GBYnsZfU0jy2BWwiXAHjASSEhPVX7ZZZ/yiSLu0Qg=;
	b=HRpZjDHPRhvlWqGt43rcgbKU1xtO7S8zLjWNjplrVdM3/EyHEFKylpTyeFIus6UA
	5GAhpc8OVLGV6YaVEZS1sDk/3/zx6iML5x+xzVNn4Rz4c/owPcCcNX5o1oRVrJXcNqa
	drlJDb9c2/khZtARXeJq/uDyQqVAC2/CtzVaP6oE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b3b9771a-e082efcd-8693-4d50-b9be-298c17c3b47a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06b30e23ca9d9cd1b0e7ff6c125e68cf6c04c4bd5d0cfe2d9b892dcf06f861aa
Date: Fri, 19 Aug 2022 01:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660872652
