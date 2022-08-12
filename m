Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC0038C
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660322453;
	h=To:Subject:From:Message-Id:Date;
	bh=BNBEvucMk5uxCHAp6onIibRHjkPsvJ5RpfhurQpfJxM=;
	b=G6wKh1CItZK33BuX2pm6/IqOpJ+ZTuNkooGJQtFJ/UXaZLlYP0av6zmHVPwiO2Zc
	NAad0tCOyISWuTsxoezU0fV47h7hMddQP8wc1fVLJ38hlS6JeLI+MqkBdmECIRAoSbA
	kyt7kZtnQ1xf7v6JgTvcPfINvUAeECKCIxd5EC04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660322453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BNBEvucMk5uxCHAp6onIibRHjkPsvJ5RpfhurQpfJxM=;
	b=R7e/arTKGMdqMqpw2mFI3tNhFxGfVg7ec2Vu+/n1vpqQ6KIC51etzi3+Vwreg031
	D7jc0OZdMoBa7GNulQkMaVtsVOZo72Z2rVzjNa1Wx3wamaNHjjClLWR0dqaKmo7hfSo
	tDZwrc/Hk9yo3B50ZtRCpespFr7rcRf+GhyJVmX0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018292ee143b-c7bce7a0-6169-4461-aa44-66fbbad6d50a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 352c88057a03fd60e2e9ffdb3032a4cfcf54879063e72203995402020ba4c61b
Date: Fri, 12 Aug 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660322452
