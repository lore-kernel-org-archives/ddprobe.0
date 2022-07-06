Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1306665
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 23:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657148812;
	h=To:Subject:From:Message-Id:Date;
	bh=My0AlB6xwXkcusRy94rwRaw/+xNCd51hmACpEosGZ68=;
	b=C5XmNWG7KpwI9aL8zFc9odEUCYSD9BnTECYbMeMgTsCkSG6UeQBMGaWiTXxX/5J1
	KmKX0PHaaAaS2MD7vVXPJA4ayGVU00Xq4xnbaT478UEJx9fflbQeR34ppnZgGfdc3S2
	+/UU5Y5MruleZgX0YceHtBn8rGaIV3bAJgeR5Ag8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657148812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=My0AlB6xwXkcusRy94rwRaw/+xNCd51hmACpEosGZ68=;
	b=jJIldytKyKTwVL2FKNy6RHz5HNgmkjhZaADCD28lYnv6v28E31uuhgbRlJMTvORI
	Pjwnc0bbq14T2Cdcqktegz6gHH+jV8ATOLsaMfwANlLHnt8sLeZVkbzsedOiYR89I+k
	/7gijqS3P2qZN0rPWKiQpXBAG1lzUeMWTBJwpcAo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d5c42c37-11df94ea-00d8-429c-9bad-7b5b40c20036-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0864ff2c5c60bd1d04355a4342935ab409e6dd0f3a03606b6dd444a7d6e2b038
Date: Wed, 6 Jul 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657148812
