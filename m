Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C565529A8
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660215653;
	h=To:Subject:From:Message-Id:Date;
	bh=Zq1hk2kt3CEhC2XKdjZQ0gUUNLfOaWXWfREl5rAaaGY=;
	b=gpS2S+/54LW3VvhPYlNqKGok4J9diObVrCm5kESVHI0QMgT+FHDyBsgIMQpMFBbl
	/QBxZAZL6R9++/cwgMMLvsQRzElwyziRYpXRGFVZkxjQO3Mc88o7swoD1OH6oU4QAkS
	+uVH2akqP7RrxrXX2oymaSjPs0n1J1a52h+wYmzE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660215653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zq1hk2kt3CEhC2XKdjZQ0gUUNLfOaWXWfREl5rAaaGY=;
	b=Ymoyrv3rul4bABPUR66SirHU/bUCAZBdjKxY6kXM99XEjhawk9vb7mutPSPr5c1+
	V9Le9n4vXvoGA86IN7OZK6P/T/uQmUoPNlDQzsl2pwX9JJ2B6RgJF1/6dUlELxFUHLj
	4bW9jfMJ4gqRHb3qLjIat/pmcsATD9QbqPMeq4Bg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828c9070e8-61ebcdb8-9b38-4285-ab66-b9be3f84745b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e73911f0b0ef8b725817f3f30179d13fadef1cafb9b230effaa0a48c03f1507
Date: Thu, 11 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660215652
