Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 803F25A10
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646130984;
	h=To:Subject:From:Message-Id:Date;
	bh=ZQKvcmoxD1DZwCVb7DNM+5L7fc1DLohbAZhkdBbQi2c=;
	b=BSaCVNe5UjxaAu5EyGWCH4Rbl5EDhqtZfFjPCeVOwTfbkV3WKjnJH+ttMN9+3Asw
	/rPOr6JERfa/9Z8OwBw+AQYTe8JwOdedTDZ/TlxL7pIbzzK4h9WiaNyiUMJ7iDwC0Uu
	rVhbGcXuExily1Xok8q7QdaZoSythTD6ILGp0f24=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646130984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZQKvcmoxD1DZwCVb7DNM+5L7fc1DLohbAZhkdBbQi2c=;
	b=iT3jt0D/W5WwGSwMLolhE1A0eBmCun7MD7pulW11DYvpHNksRdwsSQONt5Gd8JLc
	xB9/Dfv7TcaTgnFrP4pGz9XcIlLMvSlhFOYNqnTkBCBkHEi06wNo2wdqTLBHCJxXzom
	VRUDoW8PehUbkOzF1OzflUJdoyTNk8WZaGA6ELdg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f450d7732-2fccd54e-2346-47cb-851f-c2a40dd83a17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9310bbe5a53d75f772272b49e91b9968dccaeba5672a5a34dd5261ad21fe8cdc
Date: Tue, 1 Mar 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646130984
