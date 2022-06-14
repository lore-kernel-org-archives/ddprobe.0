Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B612F21
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 23:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655249160;
	h=To:Subject:From:Message-Id:Date;
	bh=CW4v3qTTlpiQOAZ7mdeYl3hL3cXz0C2lFDNj6o+++3w=;
	b=TmINmKx9NKtbqUlpbsTTRM7rA4Q4xSPBSNK2hW85kXz+YXKNFpaOWXKef2POL8lg
	P8oBU6GzR33c3fg6aGiRpnqppjFZuMlLTXGJwI6g7N7ldrGFpta3r1i3v49Fjm4WmRt
	YmPRAD0btg6aotqz1g/7nJhxWexXxW+/3nfN3mjc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655249160;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CW4v3qTTlpiQOAZ7mdeYl3hL3cXz0C2lFDNj6o+++3w=;
	b=MtbVt75KG50CO6u+vE0JYfum+9Xibjovx8S6/5BlFP/9SKawcz8lmeHa1JEgPRK+
	LIBt0weedZ3xzwPBwVCp2ODRT9BuOAwyH2q41ssOrEu6br0KPrV//6PTZ16t8c5bled
	44Oib+nW5yrTIdfQTSo7uAHMHnDN7wJ/+CCXS35Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816489c498-02baf0c3-e558-45ce-8e6b-e26da7025f76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0038f6bf1990985dd9bfeb08405a80e745b4bf27235733f23b96d0fb5bc9a83e
Date: Tue, 14 Jun 2022 23:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655249159
