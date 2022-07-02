Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCEC3C1D
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 16:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656780412;
	h=To:Subject:From:Message-Id:Date;
	bh=7V5iMnGcrYGf7B7hSzWGbtCw6C+LniWJoHLXEPDncIU=;
	b=Zh3YIIHWi26v90+UvkgUpouz+RGeWyX9hv3vlmRyWkxxUc07Ikq2TeyKwrUnEi9s
	8sTthWYtY1YVXOGR1Hvenz49DNKMojlzwBLsSgP8fsX7ljlODC91RVpN2Eu0fU/U7qC
	WjO+EfAHpnLv6YvLSFZBrisavjtYcP5I3Xw5hPwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656780412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7V5iMnGcrYGf7B7hSzWGbtCw6C+LniWJoHLXEPDncIU=;
	b=AjATLCzpTrHXpCIgzSqYQHqfzicE0jcCss5WJ7NfJe4j3C9XaKAGchxwqtt5ytXZ
	cxm/2QMO0WUB62znKSE9HAk2A6yH+c5JCi3tDUiPYkd0A8VSsB4M+6iWPi4HEpOu2RT
	Cjdk5xGV4/5bc3Vd+1kOluduu66Ls9kvlaDb1lU8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bfced578-16feedaa-c7b8-4bb9-a7b1-ba1d8263cee7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8f19e2ff1b20fb65eb733ef56d5a821701d598251751bdc9239f4050165adaf
Date: Sat, 2 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656780412
