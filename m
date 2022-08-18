Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA17440F
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660827653;
	h=To:Subject:From:Message-Id:Date;
	bh=lcz1htJN2CHhnECzGfNZb4f6XpMA7DAFqhks7TxAYpg=;
	b=ekj0PQiKHzKmXCMoR32L46ipVMhSZpyXzvhnvfPOV3G9fHvmnMBEtF43F3BJ43j+
	bPapnDFxFgr3HmZ1bs0D+JIdouRRPwqhJ0KsUsX3LqAKGGM8qPLmMDDGJa+Z4vapS0T
	/7c/OGRCURHTI6rLYZ1p5j2TKoQG1meG92YkqzjA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660827653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lcz1htJN2CHhnECzGfNZb4f6XpMA7DAFqhks7TxAYpg=;
	b=djiHc8ImHoQH9I7PTzI0HUXetaCWXc8Ej6Gspcjlmg96/uce+5OebSSdzJ6gWBph
	Vx4Ym1fK7nJOOYLffyfyPMQWgaO8IM5vun9wUcpZvEIsXFutteZuGl5PZjzRJP2uBL9
	uKvXjNUU+IDklZRWishWNe6GuR7Eizao69x7YX3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b10ad1ef-5ee9be68-50a1-4def-b411-9f8f53b4cb94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e606fc7768f8529d7d52a5a80095472cdef498257103344ae0f662b3e108343f
Date: Thu, 18 Aug 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660827652
