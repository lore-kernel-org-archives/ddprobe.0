Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105877A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 07:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657696012;
	h=To:Subject:From:Message-Id:Date;
	bh=7XnGFxBTPcqEanl+LYmlcsyVlWuFmbijOuuyFl+NgT4=;
	b=Nxx4K3gwlI+NAWluXUk4NRMTI+TzrM+fb7YJWWHmqOOYTo93rpi24k4tJMdruP/i
	J7FNAQuhpc5OvJbWOytxnJN+POtO+CGmXiT4BxBHFNScje53AlMktEH9VMWEoS1eAku
	7MSRuMmE7yBSV6BccCaX0UhyNai7GKrBdxCj9axc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657696012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7XnGFxBTPcqEanl+LYmlcsyVlWuFmbijOuuyFl+NgT4=;
	b=U4+SMb4YtSLY5MHT/Z7L/sd6gAv25sMbxsYBHYkWDR6wGzHPmzt8gNaQPh7Q7qMa
	/E6hmGQDMYe8ZQM48N/qmh8kiow+TfxIcAOnKkQ89iYeQFG5igGZhZ827tCJ+kK6HoE
	yjy8LbsL/vtxw+y8usjuMwT8n1XDVOFqoF0zyIjE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f661c811-098fc177-5765-43cc-a4be-fc30c27b82b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23ebc6ebe2ec3a51a0d9ef950c76cccf83b23cbb7d8569ec28f5a2ed60fa2da8
Date: Wed, 13 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657696012
