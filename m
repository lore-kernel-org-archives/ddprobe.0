Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453F45C9F
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660110052;
	h=To:Subject:From:Message-Id:Date;
	bh=ccLiKXur4/flOoNaoD7GFky4mgwgYtkadbUrutZxLxo=;
	b=L8HzamCKL42xm8rg2aFfOwRCYvYn/zLHZl7pAEVxxmzj05j7kRfvRqBxe4YtNaVV
	/PESi5c2EjkYemV84YHuBrf2ujG2Em2H+FobagaTWjdy5xSLoBbqu4qk11xLwj0yfHS
	tBaNc2/1mQ/AaWNHnl0ewmvqRJORWLZhazk/p0yg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660110052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ccLiKXur4/flOoNaoD7GFky4mgwgYtkadbUrutZxLxo=;
	b=WJiMKJyfr2oooA7L7wFHiU2Nbxrq4lKLlM9XfYbrxFI6Ip6pXq1G0A+iGfqweIYI
	uy3w18f4o0oe3vt10i0kPJfuNZHjFLV/cbRJ6sLCPesNJrwqacE4ViBas5loNZl3JpD
	IK1YhfCHdwxdJTtBxER/aCP799xA7pMolSpANqBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018286451cd4-f71d858e-909d-47c5-ba5f-d6fefccc4359-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59df6dba5bb87e4345d84fb27580c404bb2e15b343332cec5fb5b63d7ee1af06
Date: Wed, 10 Aug 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660110052
