Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C437C
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660695052;
	h=To:Subject:From:Message-Id:Date;
	bh=JkB7GGrWr/Am5srLwVtVNEomOsmrvHy0N5N4Iaog3n8=;
	b=GuSdZuE1rWxyiQ9E4mnLvyB70hiv3P7e2aRiXA3zhwoCIEmlyl/w6wkGr5vTjpJz
	kJzlUOUPvV2nbqbDEsg8+wJ1L4ef7Jj8HNgvUIgecqgdCcZHNblIHOTXsvU6uwc0KHH
	a5TvBsx0zO+fjs9uNFbmfOCGiAKgJChQJPOPB6Ls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660695052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JkB7GGrWr/Am5srLwVtVNEomOsmrvHy0N5N4Iaog3n8=;
	b=jThZIdlWPvZv+VCl8Su5AODkaIDKpjTl2EGn8A9KTHLj8UAdKTLEW1bDIrT8G0ju
	5dsBODc3l/8iZN18l7orWW82ZhB8Ps5GOrqE1Nsr6SOf7gsa78Y+NJIZiQKxswpt1k4
	pX45l6YV+WrjXOg+iodur9ajb5FH0j8Zl+pUWde0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a9238121-9aa61ddd-24b7-45a9-b60f-721c98e1430b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6aa80e92904d798c005b842b576aad8b8b35ddc9de84a917b3e229f183c87cec
Date: Wed, 17 Aug 2022 00:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660695052
