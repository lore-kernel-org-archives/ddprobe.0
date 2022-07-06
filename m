Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B56C33C6
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 11:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657108612;
	h=To:Subject:From:Message-Id:Date;
	bh=BwD+cPbiMxEQMe2AMQlwT070yY0KcOWEPdWj6XmSeiE=;
	b=Zww1B5eI9opjTP8GJvLrKXWSOAYZDKp/omTn9tNvcRg6Y2t3PogevTJdk3nXuYv+
	zLPfH3iqHmCuQ3B8ti9jPN1W78u7fFixkXBU/LFbyeUrbNYJLYhs0ZVNlyk9k8lohiD
	W5TQ/Z/lIfxOEbwQCTV1ve2wPtaoom6WnTZNr+Xg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657108612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BwD+cPbiMxEQMe2AMQlwT070yY0KcOWEPdWj6XmSeiE=;
	b=fx2whzNuCoJe+UiNQkkQStQ9f2ONHJL/BwrNI9LQeT6pvLJiwLqYqRsmBfojV4ku
	VUq7a4qvflk3X6i45YZRWF6R2bUHcy+7u0wZssYYCDZUiubn6ulGx2MbsK42cs3R+vT
	KFTsOhrqh6Sbd7Y6zBNXWFHqv/hQ35E/gurH9Y7M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d35ec4c6-97bb123b-1796-4816-9883-0aaaffc876b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 828d92452f9d4be5d0542dde7567af96207aeb8a74f9d5ea0598f8c2bbde0cc0
Date: Wed, 6 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657108612
