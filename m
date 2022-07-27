Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82DECA3F
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658899252;
	h=To:Subject:From:Message-Id:Date;
	bh=MJCvpdDUte6PSMm7mi5Ka/9u3vCNu6kytYQmx2V2U5w=;
	b=X4W+De9VLX67OzIf9GpAKxFYPc22Su1Ztmb6ykbvliqR9qyFuJB9Z6qPnh/KWXUa
	qcrxquZ/3KgAgq/h0JtU6NCsHRIbU0encUtlJlffNYA6qT01APSLzEnHtszmh3Yv8mN
	xPwzs9JyquhxDuppBcn8poNteOdR46oInkEVE+1s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658899252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MJCvpdDUte6PSMm7mi5Ka/9u3vCNu6kytYQmx2V2U5w=;
	b=DL8i1Jorh8+wKVY4mKMPx5EqOqYjqiHqzE3qpFcjFd7caPplLu8VuJM0hCPHbwo9
	M19aeCrQghXGQX+EhPhxUNaRwT8TZDcTlt4JgjD1dZU1FB3O9atv9oywh3xLre1z3Ph
	7+dtNXMCG86+DhsOZc9IR7XKdhApXmBhKNXdIads=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823e19c554-5b5763b3-5169-467d-9d8a-5d550136631d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 542dd781a3c9265f19f970a5610c969f672bf0770af6dbdbf39d054487acbfae
Date: Wed, 27 Jul 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658899252
