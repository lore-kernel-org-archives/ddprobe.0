Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12ACC7C
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 17:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649094778;
	h=To:Subject:From:Message-Id:Date;
	bh=SP4LrDtk2SwrW95HUBht1hBJy1VqGIOnXaK+RurCuQU=;
	b=KE9bQI8ldSfSG68BNQf4WBGz6mNeNLbC0y4mtHXB5UIA/ttRu42KogawiZd0v7CP
	fign71n8comOq+PBiaGt/NRzMw4inwbjg/P156kRailRsOdwYvxjSn9whT0w3IaiDN5
	VreXvxG1qxoiskEzUprsP/4Q+FpN6zz7dSMLOqTM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649094778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SP4LrDtk2SwrW95HUBht1hBJy1VqGIOnXaK+RurCuQU=;
	b=eAZAo6+dyILB2877F3SHN/2GWqg+CBPDcVe4UaQv376Lyxllu9aF2l0RyJpFPzlY
	QcaPw9K0Cq6qXpFbwIa9ScMbquHe1yFxYSVj3vmFVy7nB7B/vEptVXzB0z9xjDTZ0AX
	TzfGVDROX1cb6Pq1brLOETDsIMXUy7tTb5zsKvpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff5b55da0-b95fc18a-71cf-411d-8c28-59b36fedda26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d8f9353d0f7a9a13b4655bb3eb6b72762a4e048753c23cf01534f496bf03e79
Date: Mon, 4 Apr 2022 17:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649094778
