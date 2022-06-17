Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF2377F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 01:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655429159;
	h=To:Subject:From:Message-Id:Date;
	bh=UhrOGiHdRCwtGfHOJlttz25pWVIriXzmmjCViI1wMLk=;
	b=XL6IXYuxcJvvTTmNF3gJ+OtCmrq/30HG3Mgch8eCJ3zTjeUEdvg4DxdMsel2JLo8
	r1JHy8xvBJnTeYpAD172C8jyXVDft9OQ+iUlLT/W36hmBV8TolId1+kVkw0dxduq5RG
	MAwF+vvA9vsGvHKrA05OxKR/Xf5dzpBMRDUBdmSM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655429159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UhrOGiHdRCwtGfHOJlttz25pWVIriXzmmjCViI1wMLk=;
	b=TNCCS04glO7DkJ5xzWMRhrQNaY/XIXwoIGfldcvwCqnhUeUDCz9LUHRwnWiFrKnf
	6NkdJkx3/hmwH3Rnw4Iwi40Xzjfl6YPyCjUjPLrrWG22NIqrhDRMkTbxlcu9q0vwcaH
	GOTpsp/MxWSb2Rj8SnRjM031HBB4Mghldrw8mqaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816f445954-18e8e5a4-9db3-498d-8f23-938ce27c9a79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 381aa8830e0c7d752ca1a4f4e5d11d7413aac4b7e28f96c9f14c4b00314d86e1
Date: Fri, 17 Jun 2022 01:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655429159
