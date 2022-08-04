Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43443363
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659609652;
	h=To:Subject:From:Message-Id:Date;
	bh=JI3S+fD4hJKYOcZ45LI8inDFqlaVTt3jr/u46iuSaoM=;
	b=R/cJ7jd24UCJuE8wxT7W0JF7px39I1omFXBzXft8rS89Wj8VqOWCmdqnmuIYSOYC
	pYXB0ELE1jg5A2NRXYyBYhsw7y7gC+OArmgmfkQRpi3mP/1ZQlKNQx5kwIMGqw+32b4
	4FtaEG6eFu5rBy9ODLdRtZfwtoMzz7U5QGwlFnRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659609652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JI3S+fD4hJKYOcZ45LI8inDFqlaVTt3jr/u46iuSaoM=;
	b=UguKNznRe6n4UG3210ldAKvE+XVa7esCeVhHeWsvz/oRZ7PEz+QLyM5x7+N29ovZ
	Hz59tJuOlx6VAp16Oy2GidQXr2t/Su4rruIszoOJ1wSTr9hP0GZU6L/hg5xTnfyp29y
	E+xoR20J/tcNuwj+retT9kypZ2F/DVoxmmAUmb7g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018268719d3b-feabf8f3-d650-4d48-b9be-b99f750b793c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c4a7212445017a5290f150da15b0673a2f7fd4a8bd774d77135f001a00686ce
Date: Thu, 4 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659609652
