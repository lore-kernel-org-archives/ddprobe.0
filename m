Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A40F7E
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 12:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654171919;
	h=To:Subject:From:Message-Id:Date;
	bh=oZ7XSwwj3m7Wh8IbbIx5jDq+md3hnP8JxihEnQ2fdTA=;
	b=FvN54dSDIRDIRw7ghDbDd6pbGAVbHlmxANu1+r52dy9ve4AqwLMNpoMw/gwPCCTu
	/RVPPtsHEagErlNVpZpOnepC18c43/+GLE8kbwMljhoxf3vvA5EgCfw9GRJBDnCQox/
	S9QSgpuzYS4gdpDelZSxpGB9xVJxSvunzkYrBJCo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654171919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oZ7XSwwj3m7Wh8IbbIx5jDq+md3hnP8JxihEnQ2fdTA=;
	b=kRHfe9Rm+VhvZUhxZz0fGlqoJQkhRdMjmJ4kMex6xrpJH0p+gUfZh0KYiMNEpkdE
	QdpzmzUxglQYSutrAE0yEa5mRcSV1877XOO0/TeEgvsb7BJBGV0H3kbA5Ye8x9mnfR4
	ZToi0lSzq44Rgczg+Omz6sHcipUKcVLspb1hrPW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812454638f-2f1c8664-87e5-4127-970c-ed9080a9c680-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c9440a53cb7ad00d148cb249083b2d9ba63cdc0fed8be52da97975a1b04461b
Date: Thu, 2 Jun 2022 12:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654171919
