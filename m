Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9F6291A
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 18:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652986679;
	h=To:Subject:From:Message-Id:Date;
	bh=ordEaZeGOIEpAwysrbKqAZB3CO9t6RJbVbzs6n++f6o=;
	b=ZiD2ylPbHazgueTAhBTQzlwoXDUEL+kCLxz0PFENfFCWnW5ETqQMPufL6+POYHqG
	Cik5alF7nbIbu7KWtiDyBn529TGDbv9wVCbq1xbNfslLNWiW5VJvJuBkpxEa6r3pseB
	59Fb6fbeVQKiT7nolryJJhln7OakGEUNzc03cylU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652986679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ordEaZeGOIEpAwysrbKqAZB3CO9t6RJbVbzs6n++f6o=;
	b=IpWTfP473ug275AKr/yjZibIQofs8lO3g482DJtSjrvCebL6e3/v45Zb2TCK7sb5
	tcmexPZxmjL0dVBsEdfkvxUxy7BsBKWpIRpTlCZKctRPUwadzSPTcBqI+7Vxp53pWr9
	c0Mdl939iW7cNYis3rFZ/hHA1UgIjVTFk6uccnMw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ddaf0ff5-60de8974-6761-4437-8c49-4fb062505452-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 882862438644d9e577bebd027db87dcbb428ddd52f03863faeddc1680686a8f9
Date: Thu, 19 May 2022 18:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652986679
