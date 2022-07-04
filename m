Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034467E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 04:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656909412;
	h=To:Subject:From:Message-Id:Date;
	bh=GZQktdIQXX7Qt0pdDhRqOMKhD02AEP+G8+3e4fd32kE=;
	b=j1IvkMSSwRM2kK31+D3Xqfrmr5C8O7D7XnKeTU8bHGod1M7XAv5UUZ5y5ElpzLIZ
	dxYaN3WcOAgjsw/1xuthbDjNeFZnBXYDYUnXWsR6gNOi61ymIz5AsuzbE4QTldkwmsq
	QpTRI0UXXbp/aTgFzl/wCuBT+dHwZUxnYsQGRE2U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656909412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GZQktdIQXX7Qt0pdDhRqOMKhD02AEP+G8+3e4fd32kE=;
	b=fsPmRx9+4ZX1G3z/uGex8QCCTqJqzfqKnpjnwQ5+Jg882TA8rJHqufjjuSzsmEF8
	xC5a0PojnS3c16WLyvDPmuyqI45KnSWnvR6FRb1NE9gg95lhFzK1Tg65GOmIyN0/ex7
	E5mpQtKSxsOIxLaSYaUxM9r6cV1s1700kqaf2TSw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c77f37ba-fa59eedd-ec8f-43e0-869e-83d6cc176eef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7280a76d34cc7e845bb17dac5de5d884663ed3a50ccf8ad1ececb49f11a56fd9
Date: Mon, 4 Jul 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656909412
