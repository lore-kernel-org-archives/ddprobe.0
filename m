Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B4F137D
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659540652;
	h=To:Subject:From:Message-Id:Date;
	bh=kr7y7UbB5YG2MU3z3fkWLMbs5pveY7B58CqOGUvZRBU=;
	b=WqDW86HyhtQXJSYnWdWw8PU7NZMbSu7bek9MENB8y446dW2qJIdtm+9/MOlwGf8b
	//I0cGx5laFy5mJ9LyEDNZGLeWyXOnmxOsFk3Jl6ffFulHSpHrYn2gBZnLDjSV391Xu
	kwu/JW+TrKKzccBK4qcYuKQ0H0sDQa7iz+iSSSwA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659540652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kr7y7UbB5YG2MU3z3fkWLMbs5pveY7B58CqOGUvZRBU=;
	b=DxaM1S4lHg05dsZFWBNKtWWZz6LifnzxVRrpJ20ajgpn+hbF6Kj6iaiLUzsVYWdS
	zvMfzIaYN9/WNiXOHezSwEf0QOd4KRuhHfADfLRRPmq8Wdhct8+Uu5WMpxg1gPSLFhh
	5RE4IGt3FSVqNcsxsqILGMxEXvAMGjPbauDJ7LHE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826454c265-012f1a49-e475-4041-b1e9-7b97e7ed9702-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ff73ca002d33e82c246e52dc755165345ba2e221ae45a5b7944b2b1a19a3590
Date: Wed, 3 Aug 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659540652
