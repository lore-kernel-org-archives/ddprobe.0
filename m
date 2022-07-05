Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427DF33C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657030012;
	h=To:Subject:From:Message-Id:Date;
	bh=hHi2yKQ4gXwg7F57Z7iOhq1ADdNa4bpf9GheZ4qhtk0=;
	b=fenY6ulCSnsAxQ0p8IM810WMMF9jz3AiC3RT73lfK1yzh/OQ5Q/ouwouZXYKwCq2
	Nw71aglTB4/uV5KMoUKUAZYmkRFJriqAdRaRKJOs0kUdslrZDsJfWkVGhLHlUjluE40
	TLEtdRGN0NAOUv5H1+rqMYuhvxwirbWrVYvJ6KUs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657030012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hHi2yKQ4gXwg7F57Z7iOhq1ADdNa4bpf9GheZ4qhtk0=;
	b=U2obW6adkRrWPWtz0OPpK7+Tlr2uiv/7vBU5pe7ijRHO3lxDtwIxvGPSKnnFZUbx
	NELBhGKfKvtLGFI09OZ3Y0SlPQtbqQogDjiO1H1F6afJkSOT+L45BeiZnt1oG6S64ZD
	0zw6vpn0kvegSVdB12mUdx6cPLd5c30B3cyUr+GA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ceaf6d84-e963fc4f-3dc0-4ef5-8930-5e46bced39d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99bd509e0a7d8723c96a66f1bc0ca808f7e0a021562f73338e275bff0b81b016
Date: Tue, 5 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657030012
