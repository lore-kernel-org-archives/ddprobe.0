Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148E215AA
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 02:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657681012;
	h=To:Subject:From:Message-Id:Date;
	bh=PT0cV2ZaVR9fdRd4OZWvE6pUP46ygwSeWHi2fGUt+Bk=;
	b=X4XjOSuArfijIAeLNkeKeTUH5vOpX768GDabsRaqFI8GQg+lGJCgmujjsxPOk6y6
	zpw/jG5FvZfUQSnOrfTUgAGDplxkzICxb6MK8ZB2pZ90XaWjHx6szB6+chKP4mZiiyl
	RwyKK6G9qYlfbnFjm3fzQBBULsMDT8DFHQgEmoqU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657681012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PT0cV2ZaVR9fdRd4OZWvE6pUP46ygwSeWHi2fGUt+Bk=;
	b=b+AYUDPAkvNDEpRfzmAK9PCElpg+z9G1HBuFRLkus1rEEeRvHVGeJJBvYIs1I+l5
	UdhTgGUUgX5uuKP+HQqwXIDknIpEiXSMkRo8G8I8sVOik2i0IsbBerLHg4fh8zfVi+K
	qMqT9yqGQkZThb++2Zyat+ku+TWyH3QBJLhA3KGo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f57ce691-9faa2e3b-25f0-44ff-8c7a-18f3902f721f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ca0e27153214f3a2b8041e86c83385e5cc727883cfc52a08de826a0f3af6efa
Date: Wed, 13 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657681012
