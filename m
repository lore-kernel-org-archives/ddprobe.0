Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA61D5EDC
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645393285;
	h=To:Subject:From:Message-Id:Date;
	bh=Y1fX/v3kTnih1bWtYHi+xV89edlO0C5EOfDLBhDfv64=;
	b=gcPHLlCuEIdKSVdLDAtNgcqvfFtiPNGkBn3fE8P+1N4aS9lGkmanlWVWOnvn4IwU
	lM/0wZUqa8pAPz4fF88HSW0gbP7lb/k83dOoLGwjZdFrwY6L8vrT7dTXFilS8LnQFD7
	pJRtjQ8Fd3ovpw1hnC7LgffWzn4DNmVFP16/RHPw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645393285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y1fX/v3kTnih1bWtYHi+xV89edlO0C5EOfDLBhDfv64=;
	b=Bw0VH0sHX3eUmn3Op3oEv/bf4CqvZxOv99LGKD09DbopBu1rFk4fQq7ub9f+rLaT
	xjorlyxxxK3/970ZVLiGK2BZx+/6EZw5GqzUGAZI5OlYAwLpaMQqfoaWuk/Jq6JBS4J
	vaJYeo7h/AhE1EFruGj5yLBjrZCeN4mHsS84PtVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f19150eaa-aea8e87f-97e9-42a9-8abf-83efc40377c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e41a363ac453dfecbd9868fc9b4e10bbd2dee37216bee5f1df7f4cfb1a52fa9
Date: Sun, 20 Feb 2022 21:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645393284
