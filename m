Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C28028E2
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658947252;
	h=To:Subject:From:Message-Id:Date;
	bh=kjTufxi0bYkPoLWqrGHve7EuS2THMIzEdBWrEr6OttQ=;
	b=JJPtm0JPvibdQ4+U+6RsYA1AXxLSPkizy5sPuSN6HJ8PQBjHNdiQpr6V/FeNA1b6
	BuuTPTsWB8Oxg897UtLWcorgfwhMQd6xwfJr0iWJK7d68FzTXDwqFEsh+W2lm01HWvL
	D1xBoIakoPmVpREXPWat3OBQv5ZFWHjBxjBXZu9o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658947252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kjTufxi0bYkPoLWqrGHve7EuS2THMIzEdBWrEr6OttQ=;
	b=VUjpFVCbBkzJLsU1XHtkTzRCtBtc8+FkVX0UKXqkXv84g9suod+tMlGF0RToLOOJ
	I50hlJaOYKnrMnKQiLpB0tQYlxpf/c2fJb1sXR5zrO4we/6kJIZPYOuJ2GIKbsDHMPN
	PsisSRHftF2yqGLLqVtsWEQgMvqMkMBQN0JlLOag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018240f63143-90bd2db7-2c39-4a71-954c-a03907183f9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94fa8efd03c108a241636e84eb0b8eae7a7c414cddf68e1b576107b3c969ed38
Date: Wed, 27 Jul 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658947252
