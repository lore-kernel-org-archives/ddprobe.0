Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D83F7F6
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 08:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648716718;
	h=To:Subject:From:Message-Id:Date;
	bh=IFgzXGZK7C0xPatS7+pNVdS8h1Mj5seU4LKO65XeBrI=;
	b=g6Qp+Kdg7ZQIFM4aJ8sA/d0z/EIQP/94kHtQ1O5kHvohXn3QAsKFyLsNrskkaQFF
	SD/63HKIbjaqYeFoa5Lmg9h1ggPU596q2I7wy/SrX45W0nSu+anIJZC0GIsmvD9Ru7v
	tjuWdbK5TR3zr6w9/jVJhBi8KXlX9mS0so7VIABc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648716718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IFgzXGZK7C0xPatS7+pNVdS8h1Mj5seU4LKO65XeBrI=;
	b=bNEhYAVEYxaCDKWZftscSSjC6mwIx1BbdjrlKMPzqWWNJxSxUCP+bho+gBu5/lDV
	Fu8PLFS9rmpyFgxwtNa4EX6WNt6vXrd5nYex7ek+KFWwTZAA0vsABF2PrcdbUuc845s
	pj07R6OLRk4f6W7YXmE9L6a4gN86BTjxDyIC0Abs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdf2ca100-7953cfc4-8ed3-414b-bdff-0c33c878c222-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 159706a8f2d280d7383777c713328663c60220e251e7e35b89e5f4f478cd3bec
Date: Thu, 31 Mar 2022 08:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648716718
