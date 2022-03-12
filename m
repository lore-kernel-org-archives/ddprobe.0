Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7843F361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647097284;
	h=To:Subject:From:Message-Id:Date;
	bh=FJSVmfLCaCHq+3b6wt4fVh3cGvkIA8vPhimdpfQETgA=;
	b=iqNmQ2Lw39PnL5lnRPPyukgv8rzZymfG537lFUc2DKKLX6V49co7ZeLMhq8jyc3E
	137n6O//xt4jCq04Xu+Abffn43VTgwF1X1l0cSI1t8U50LoJ2S9kuA1bh0ffuugONHk
	pLWKbCE2IYfpCXuPOCoDkIb+fk+TVEQ3W0CWaEGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647097284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FJSVmfLCaCHq+3b6wt4fVh3cGvkIA8vPhimdpfQETgA=;
	b=g9k89zyAZingeUQnk9ZSDRHVUqn+89ojexlo/VRAColSyhVVx36wuW5H2qr9oLJB
	w8L4F4N2SP3gSnR+vXg6zUdGjLdzmVtXrcu1AejdzwLbu34Jsrft/ai7Dam2/4ujsws
	0i+T48eEOClOwCQIYg555vQt+M0f4HhmHWcpxy1E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ea608d0-380171a1-20d5-48e1-afd8-4457539ce45f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be83a7aaa5246f23bd5c7dccf0adeadff238b9895f355b1fa245e499d70c20c4
Date: Sat, 12 Mar 2022 15:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647097284
