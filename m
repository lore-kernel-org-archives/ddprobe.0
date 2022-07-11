Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F6C3C1D
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657541812;
	h=To:Subject:From:Message-Id:Date;
	bh=h4smEhA1JZ7MzxNFdD4X+w18+bAStjq3jW1yhDJaIx8=;
	b=buWO9SZrdYUoggONVEk1SCc7ZQS4IiCQXBd3UJhkhIlnkXowdQKH22AAv3ODPlHp
	JQRIRBek+StfL7EZZqHrV5Ql/sKOyfGw5YWtMuujA2Q+aN4CGPLPkP6BwiN8Bnf76xl
	+PSw4u5stmSogGJfof7yc4lRmwcAMyw43wo0VR/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657541812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h4smEhA1JZ7MzxNFdD4X+w18+bAStjq3jW1yhDJaIx8=;
	b=lFS5AUtInQuJf2CA8Gur/W40tCxL2hS0IKUsVmkkNk5LQJbjjgxyKja8eADLlIH3
	UVcelkmVUrLh0jibm/2Xecht6CyjmpmdMn4jJ3zvKZ2etdOajC0FaVmpLXkZOjyRlnp
	VILq0T4RDeXiB8z5MceU29b4DprVjk6hH/htt/uw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ed30e0ac-2979b072-ce62-475a-bdec-5aeb9085cb5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1f171fed2f8a2306191f49468e6f1cbcefc4a27a3bb5ce8305b132c0eccfd3b
Date: Mon, 11 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657541812
