Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE0417C9
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 00:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657846612;
	h=To:Subject:From:Message-Id:Date;
	bh=ED9u62pxpi1cYXM6hiZChu+Sp3LCijCKbNIV0CXhru4=;
	b=gpjzyIgUqmC7pXQxI1pY18z2dOnF79mRvNPSqhPnWOUlEudeOeU+GZGT9OEjKqCq
	fLnkdwL3aoPaWWm/y7iMbRedrB646NWiRQPc9a6GmR24p53fBVz0jmdBN7FN6ZZTho/
	/7J2igNjYeL2upb5LYd02sgbn9ltCWw6NVamR1QQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657846612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ED9u62pxpi1cYXM6hiZChu+Sp3LCijCKbNIV0CXhru4=;
	b=Aodk2eQ0c8zyC04PJQijMAZPxYgETUm5iusvYDzznf8CBKav1GJ6h25kFem3Xqaa
	UjaMdLGlTijBNAqsN7MXS2iiDtSfN65ggwL0qoOpyQQzXzczN1WUWrDek9/itVD+8L7
	1mzH6LxvlVJtTEU+FIQo+SdTiU1rW5UqrcJTYVWs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ff5bc13f-602b682e-c94f-47fa-8a0d-56e0fd1b48b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65ff37b9533595191e519be211e0b3012061bcb6c49d6ab6e8a22c8f2dbc6d90
Date: Fri, 15 Jul 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657846612
