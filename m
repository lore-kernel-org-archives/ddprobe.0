Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0CF33EE
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659192652;
	h=To:Subject:From:Message-Id:Date;
	bh=E2K41LkEQ1Ea78zG1kOnI72AOhehztW8YXc3fJbwKDg=;
	b=jgtA+egUDKyTTyndZTo+0jG/J5aOl+bG3q5MqWUr0WsCj8umYyxNVYzk/Tk9J/xX
	rKItNSO8PJcWLgbwfcJVVEuhuuY7ZJ9kUxhqiv2unXW9LPNj2QJer+OX2FPNVBhpbM5
	oaxHFcYqLRwhGTnOsS4+NjWJiZEnscNsHigXjMS0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659192652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E2K41LkEQ1Ea78zG1kOnI72AOhehztW8YXc3fJbwKDg=;
	b=WbfgKWEwdkbPDhiD4y6e9eBTTLAzvNEWaa+2xkt7k0m1TYBa72JtJCoVp9LuanLo
	EdVSY0RbVuXQHXwCBthCyJGCr/4KP/f3kjtKq0X8KuyJb6EWrEabt/sqCfZnoY0Stzi
	f1Vgg56jRQztxRsKfsFGrM9lbOd4t8b3/hRPoaXs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824f96b336-9fc28eda-7952-4288-8ba6-4167f21c49bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2492cebe74f6a9598e8b6b5f16499d0da977f84388c85ba9087e6352522290e7
Date: Sat, 30 Jul 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659192652
