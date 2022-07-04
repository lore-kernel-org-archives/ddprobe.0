Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E34215D2
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 18:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656960412;
	h=To:Subject:From:Message-Id:Date;
	bh=w2pMIjcE+CUtjBHL8AjDrQScIjvrYAOrjdWUM+sLnNk=;
	b=K4y1hlG8TaxHzVBOp4U2rwpwg4LtrFUMg+HRcujmMqIUCQNvW5V87x5nQQqlTD7W
	zleipSN3kbN/Y6FaSVqHjoilxtoYGIJU3GCmjZt4hb0yNL7k3HpdiWhM97G0dedFf8T
	uwyW0jbEZfuAO0dvk+4MP8UsGB6oTf6kmS1oQZck=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656960412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w2pMIjcE+CUtjBHL8AjDrQScIjvrYAOrjdWUM+sLnNk=;
	b=HgXfP/Cgmax5G2enxqTcXsqY/Ic0oYQwCq5SizxZPUAkwmpBKnsGgNjWT1ixCUC0
	TKJ/br8lxUVOknWy8WDk4UX/yUPhJYM17HMWUsHd5Y8Vz2x5H9Nz2GSC8sgr3tMGEfe
	n4GxH3vCoRoKCub6yAwiPvRN+/NMR/4LL+5ECMDc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ca896aa9-88d5c8be-e52c-47a0-81d3-3b1729fbda3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c9f1ad53d0552588f537e5a1b3802f7d28ee2f0766289e8772c0db1cf541795
Date: Mon, 4 Jul 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656960412
