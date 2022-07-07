Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81CF8362
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657181212;
	h=To:Subject:From:Message-Id:Date;
	bh=ujHZC+WEQqUPrTnHd6SpJrgTHN6SYUGAKYxSr3D35so=;
	b=GoQvdWZcJj1DEOG4+czSdHTUSl3w9MhwlMdJimZW9DFBYsk8hgLobCJe5kBMZbqk
	UpHGp5LFPLnKjg0TPcZgs83rxQYAecMmiHjnwVMnti2rzzZlj/TLw0PlbcTvjsI1PpN
	TKrHF+Q1ww04OdY4qJyPBMBiQveb3g6DCpTzLlJ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657181212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ujHZC+WEQqUPrTnHd6SpJrgTHN6SYUGAKYxSr3D35so=;
	b=UDnfNYjPqdj0r+DeWGcK83kjmqZmdZCcnE/Gb5OMe6jS/1HU9vVdRpbUKHWJ0/3V
	qSmIAS1zmCyEVTNCRwj0C5SDgQnBlFIV+Apk8czjtkPZ/8lFJHU1NC7EFPG/6fda+Qi
	ttp3umGoNReTn8rCRCgYl3I0EJkq3JcCRJTsjE6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d7b28e6b-835fa6f0-d708-44de-99f5-596eebf97401-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 366858c3e8c6830b70412e6b1559abf426f18a5e0334c2fdd083d78fa15304f5
Date: Thu, 7 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657181212
