Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195B82904
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 17:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652981279;
	h=To:Subject:From:Message-Id:Date;
	bh=NCYSNJQuyG6MtM+cEDcfktNEOShRpXovD6hQ/xLslZ8=;
	b=FnzBJ6Rl022EAXbg9fjkfuy8+MElxXHXUmaNOZ+SW9FXN60GScldKtu72u4+MmsK
	pQZhxZBCXI7xd/SLvzZW+aupTctN8takoJtiMadiJsxbI+8KguTv/ft/B9ITk2y5D3W
	AHJyOxBNChVSSBOR0l4Q1tX8UpgT9NIk2qpVkVyA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652981279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NCYSNJQuyG6MtM+cEDcfktNEOShRpXovD6hQ/xLslZ8=;
	b=iItytovF/46CPMoEs25wKgy+yxX7Tx8bJ2G0M16QvZHszbMN6lbNtoLJiKLOwXu+
	DtPODIkG7v8NesbBWwhYd9VM0YxUij2uKv2cs/Cp4Nv+IZAzU6zlr3CAc/Fqq7LdH6x
	QGx4E3FC8ac1rjCn1JzQg1jAkUv26AJYW+AlkgfE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dd5caa42-846ef386-616e-44dc-b8ad-1ade7e547cf8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e38791282922b8d1b53d6be46e654883f7f8e5d97f0599da6a77e4b66edc7cb
Date: Thu, 19 May 2022 17:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652981279
