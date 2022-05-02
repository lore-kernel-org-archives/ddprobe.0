Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E622C3212
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 21:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651528318;
	h=To:Subject:From:Message-Id:Date;
	bh=jVmGKb0L3ik/6jGE2cRPQs8YzfKO12gXwUoFgKPwoWA=;
	b=HHhVyqKAhTbH9Ssbo9BeLoN/LMDxWKjV9pFA3y+NXhr8FTk3ydc0M9ZIgmX0Ho9X
	4X8VhltAc+oE3TP/itE4NsJu31QiZdMpw9fgStZ1z+w1PsVKQvsKnJsG6QXDUAb0XTB
	nJVxaPE92eI321SElRmhWdxqitKgGANZb9ilBUPw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651528318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jVmGKb0L3ik/6jGE2cRPQs8YzfKO12gXwUoFgKPwoWA=;
	b=cec7v+4fte+/+FllA2NWNXan+xpC19asaxCDsJK1xgP2iwBn5JnvDC9kLUrZc9Oa
	WdkVJSQwJBU+sWFr0BPFfGxt5GaELJ+XFYlTERVbNFA9TUTituL8/CG+Bf2Wevu5NpG
	1d5EBsdeefX4Q0GSarYAqbU7exxAWZuL4xSA+0/4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018086c23d54-fb1f889f-f669-480e-807c-01665595a36f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f06bb998222204ceaeadbf94d40ce9482231f22a2a07d2d62d0cfbe5879190ba
Date: Mon, 2 May 2022 21:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651528318
