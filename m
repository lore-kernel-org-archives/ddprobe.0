Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95B364C77
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658257012;
	h=To:Subject:From:Message-Id:Date;
	bh=POqFTY3aNIe6cBq9+G417MYuIlFJoVax6veUG1VwTrk=;
	b=V/NOBtv0aUg3yns9hsVkT5dHt9AQNr5GHphXJcw5INJFOfDHjW7KKJXSBjQ8kQzR
	i1Tnotua0wQOQlIbf8bEvLSfO/MX5Oy1BW1nOxxyHNatATBnfmEynj4fxCepFZ7y7kg
	+j4rjkM93XXe02FrIHG0mguFaeCqWIWAlOdw9dIA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658257012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=POqFTY3aNIe6cBq9+G417MYuIlFJoVax6veUG1VwTrk=;
	b=ZGYQJsgPQGbYU6JeJv6sE4/wiYLfYFzm2seAb0fSn1C6MsVyOZ9Z8NglbemZ83GP
	8AN+LDvDL+141arB0H8cgbjY/qGfCy4R8/UyuikOQgMTKql9pp2PY9FZdnxOiwaTE1W
	o+EAvStAbICeFA24uHh/hsSt67mkY9AB2k4Fhldg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018217d1f629-24adabbf-8e18-4d52-b181-2c62039addea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cef604468d9561e2492196523e7268e323adee3d13a4c3e543c72c7849f1909
Date: Tue, 19 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658257012
