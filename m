Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CDB4C89
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 21:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656367012;
	h=To:Subject:From:Message-Id:Date;
	bh=pZmd7HaY5CAasrQ0bFv+qdaiabSTh5WLsLLbC7WWhv0=;
	b=CUy9g+eruo5nbOaiUYtGhE0XexZPZKwt4GybCMmadiTxhvvHv47y+gnmeHnmr9xR
	RNQ/WdSZk9JJlaAiRmg+EPLetB0W8LpTFizxwguM730rPgfEl3ekNE+Sr4JEWCQsQq0
	gpN5cfV2BEJTavraQipXqMTsd0eQRTk68IFXA14g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656367012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pZmd7HaY5CAasrQ0bFv+qdaiabSTh5WLsLLbC7WWhv0=;
	b=KhSAYNWfyD4rX+iEsqaNl7i/1EEHaZz6Thj17/6mqcqHTmvD+AB48JVzrZ+WOJwE
	FhSHvHt7JI9ePu9v3yRZd4N1Gcd/03AuKQQeIYPfhGSL/MVO18Qvx23JkNgB5w+nLY0
	REhet07uqLWMibgonI/q6LR+zBSgXKh/A1dGvPI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a72ad9e0-afe1ab68-0981-438b-8191-8fa39bd96393-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 596c8026c68ddd5c2917241feefc2eb3b9532176591d9c527973b9a164ee690a
Date: Mon, 27 Jun 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656367012
