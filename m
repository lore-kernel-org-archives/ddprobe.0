Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC9D2F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647593784;
	h=To:Subject:From:Message-Id:Date;
	bh=4E6TrqXiLK+oNzEIIDcw8hqNFFkhPcTZ//YF6oNTm1k=;
	b=J5Z0l9GQ88fRksnG84ULvAhgmdLbuYgPVFxGScMNpES5JjdDc7U0KT9fc1c93afG
	AcAY+hCr9cAoCRzxyg5hEEP8mKRT5ERtBorCRTYoWvgby1FlmQlS9nB2EMVF7XKn5h6
	KCy4ShoraWKp18/Zpe318svHEmGJLLA5DnD6o0Eo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647593784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4E6TrqXiLK+oNzEIIDcw8hqNFFkhPcTZ//YF6oNTm1k=;
	b=cSK0cVGT4JtNis/DO6pfoSJ6x4hrktArUG8lJw2mOdKQqkhSkbj+zDyxPFKi6uHL
	NhFJz2GCzZBOxn/T2tj4yKGQidcbJRS69Ip2hx4U1IcDKVEYnzDl2cwvIb9ccdFrLPi
	hu0VUvDUTmodnkMWC6kISLU6bMUxUySz8ke3LdGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c3e05ed-c6508d17-33e5-473e-9806-e0497082fa32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84114f7adc94427e7c99e30c669afbbad957fef519a0508b16085c0ca93c0713
Date: Fri, 18 Mar 2022 08:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647593784
