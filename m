Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F327E
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 23:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646954484;
	h=To:Subject:From:Message-Id:Date;
	bh=fJP/QBYxjTqp7NUXrH8NieVt2gu4BTN8BrGJqoHL80A=;
	b=SRE0S4MGsNq+CJy7OnkDE2bNwNUQr2E/R8LEH6MFPZdpSAQcYDI2zOezlrkodD1F
	jBRRa8Q9Sy4DoYp4CZ8rqqYAIAI/fN/Z1oUV28KBrByEXJMy/ZCMpbvjNaYPZNOhvDo
	Q2ktzi2zfHpiGzzOtpFZdd3Cvbp/tHZQxZuCyYxE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646954484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fJP/QBYxjTqp7NUXrH8NieVt2gu4BTN8BrGJqoHL80A=;
	b=jtglC+9fm3vDai46af6ZL0ggBNOLDBCZ3QvSdlyl7JxzzEsVp4CbkcIIlrV8jO72
	cChHBxKrEeLvZ0BLGXMFjfTY3kJTfZdKNHlLXK3++59KjuRK22rGZ6R1Brdj9MQYy1u
	JaJAbdzTaKgZBWTjDtPA8Z7gUVs4VKOu3sdH5KsM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7623140e-850754fd-fb0b-43bb-90e5-224ec858f723-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 334d660c3f1b98b7a802bf95aa4c594d9555cbc0fa34809e2282b33e3926fa2e
Date: Thu, 10 Mar 2022 23:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646954484
