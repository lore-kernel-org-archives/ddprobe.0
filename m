Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1220117D0
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 05:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653888179;
	h=To:Subject:From:Message-Id:Date;
	bh=PY5hZoZP54YYVWWrfAz8ll/aBCaA206cxbFz03kBKsU=;
	b=kE11LXJTKXNRC2wLfmhUYuTJ6QTqvdS79VWCnHwY1qSESQp0/WfigdPlwR/xIyA8
	BJvX0nbD5/+qk7nCrLZFmLzt5t21H7uCnTsy9tobhQDSyCLuzZRaYaq0Qn03MKrjx3R
	VqNhBj48V0OiEaAx01cIBL4camTSe5VxzRjMAJ+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653888179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PY5hZoZP54YYVWWrfAz8ll/aBCaA206cxbFz03kBKsU=;
	b=XrztZbHAh0icVI11oRrx9D0vnqmUM7N5CUo9YPgG3rLJxHubcIMZaJcMQAdkAdLC
	/3aX6UmPl7q00nAF+6vkND/oSI49m1IdU4kLFp0oecbux9cRQaqLMhcA3zNZokkqDz5
	I0YijGqv+elHSInTgNUq7YK44go242RmCT18ocbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181136adc94-d4b62a32-6ea7-41a0-83a8-721a5f1e80a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ba531ee63c4781267548969a4b0f1a6bf9f5758c9d4f08f5abcd8d24503b403
Date: Mon, 30 May 2022 05:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653888179
