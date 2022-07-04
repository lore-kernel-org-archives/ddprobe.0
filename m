Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE8C15A2
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 04:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656908812;
	h=To:Subject:From:Message-Id:Date;
	bh=gSUWHXKzRz/QsOFZOh0Td613IiDLoHKj4wFVhmdmU5g=;
	b=E50cIjgY7JIxm5hDui8TPlPJgfOAdWncHzuVrGNGFH2stm3L8OYHPpFGQBX+n1rg
	5M6ezmZGls2H3aeOp04dx4rSR8hWHtNtE3c0ureMRNx/Qvw4DetrbsUyqZOkGLS4719
	Gj8PaSRoaYvA6bR20PWYp+L/sx+pfkeLPJzjzAzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656908812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gSUWHXKzRz/QsOFZOh0Td613IiDLoHKj4wFVhmdmU5g=;
	b=ZrdKIlRn66ky7NO2ooDaKTZ98imoh3MloX2r+dWIcYIVHLeY4ZbZUuxxfdLIfZq9
	nL696S63I+b5XNqFclCbBJ7yjAMmkRd0lL9YKQqwewAVBRE3qZo8MpahOGCaYlq1ojk
	EBQql3cw51alW34IlRxp5mBQBShEMOZT5PK8fzoo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c776103d-f4a39dcb-ecaa-4e27-af5e-19ad90b85fd8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a44c0eb6ae1059e3ef5ea83100c338480dbcb7e10095b1896c0f7f64c70718ea
Date: Mon, 4 Jul 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656908812
