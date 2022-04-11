Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0111510ED
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 05:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649654518;
	h=To:Subject:From:Message-Id:Date;
	bh=RzG3RY9UHl7XfRPX1ZvfxU2PFj9OnlacfY15JwCw238=;
	b=VOtsaiAyXS1FQEYdOsp5HxfROauwg3HcIGXiUY0kvAQ5IT6o2L5Xfy5uyIrSLLro
	dbT2Rp8w4oAjDympeWR3Zf12fyIjvQeIR7Y/ENdpUWC6agd+SkzBIrjE8XABxsRMNM/
	B5hCAEu1FeWKblF55YrO0HZYwBlFeWBAOjf4L8nE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649654518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RzG3RY9UHl7XfRPX1ZvfxU2PFj9OnlacfY15JwCw238=;
	b=gXeLadsBsIOCBDXHk21FRf09zXUI2ILDh5XKsnc1iuX7K5MrQWEtdRGvgB7e5mtH
	ajwszzbwAEW5x8xJ9MbDV+MJZEO2GW5GDhqT2j/Sz7vCdRlZae5AkVUiaX0XmKO5j0p
	JhTw78Iq+V8Fqa/5OWgFkRYVHs7k0qKo+vBbYqoI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180171251cb-f4ab0a47-8429-4ee4-9cc9-97b13554cd47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4381092e9083b96fa13fa4e3d91c925860db0a1e9cea7147693fc4feef9f6eb2
Date: Mon, 11 Apr 2022 05:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649654518
