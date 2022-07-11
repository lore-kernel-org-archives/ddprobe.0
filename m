Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413A81879
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 03:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657511812;
	h=To:Subject:From:Message-Id:Date;
	bh=cbQgEgQy5xqM/wHSl0EumQFLy0fQ80sHvdAoTRHlbkU=;
	b=Ytp1V/uklZvwSJ/mcL8Ng98VHP4BexMaCedBg6HQSUJzgQnZQAgo0MIdvyHujAKL
	yAPL+qtDNmSGPZVubLkSoitnJ7tcDL2UKcxqcOrLXsIq0UuNTK/SlFzwhCe8oxrU2Dh
	4IFhblu05Lcc16+1VushG3GTcoWtWVNyvxHDT54Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657511812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cbQgEgQy5xqM/wHSl0EumQFLy0fQ80sHvdAoTRHlbkU=;
	b=kSAwEhbGeGHUi6WEagyi0syVVDhu6hFL6X22bPhruc13d1B9wwgdh6KW5c2jRsBU
	A7AtlEpu4xiOvovhwHfLj1KJoQiBnnfbcf89DOuTRm6/k0J9P5DzkCP6/EGbkw/o0fN
	ikDTmqHmNv9fKVX+VUlfen6gaUfm21ZJ4ns2Qtf8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eb671d42-1c6fb0f6-9632-49df-946f-4ede09e18d81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21cf6d0440775874bbdbd93bdc935e437c2c6f545db6e5aebff561d175ce0d9c
Date: Mon, 11 Jul 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657511812
