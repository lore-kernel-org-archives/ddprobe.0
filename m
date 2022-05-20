Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36567E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 06:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653028259;
	h=To:Subject:From:Message-Id:Date;
	bh=oeakDcAsj+XVLOarehYChxAhiPC8ysfQkb6oRNGW3SQ=;
	b=Jy5ljPXvLrTf/J3OT7Rt1x2c5J/xekWkyLUxrP2GTDDpk6P/lHksRlLdHJARVNCc
	K3AJfhPEPmPS9np5EA6TVBV+dD5y/+a4g81NzOr2sm6ucmM2n5ugZe5KM8Vu6tyUrPh
	hrz3UoC9zKEcxXWmd/ik5UyiRsKfZFYrZVlWufHU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653028259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oeakDcAsj+XVLOarehYChxAhiPC8ysfQkb6oRNGW3SQ=;
	b=O1sc8rXKxG+RXWB+6jSWO60V9Q2kn9etCATGXSpEvYjZuegaE08Nu8cOKE9cZYOU
	3aCUG8M7olKxhSleiFXIWLtLynX1gu6oG2bite3oqpqsqRKj8rHNeACxqM3SIJ6FgGp
	t4pDcn8m5I6YGISMyGmgVxCuhrKQ/mpDECSI6/h0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e02985f4-af353f04-d68c-4997-9355-bdcfd5d43c50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b006067a345c60e00a079d808aa33bb098704c044e6f3ac49a0d8875cead090b
Date: Fri, 20 May 2022 06:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653028259
