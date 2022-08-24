Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1509E7F
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661299253;
	h=To:Subject:From:Message-Id:Date;
	bh=L2BvOr6oT/iu1SnXUWv+LBIA4j02h0vLS0QeKEWjT+c=;
	b=h2VS85wHQkiq9TY77KQA7M2dunbxHoANC+nTYWxgTFNOIc47VhZDtWV0jx8/kJBZ
	4ybSffpWcg/JabvQ3CUEouZ2L12BU/hzx2imHdY3LNtbsX1qXIQkKbT6OiOwlo5N9uY
	AEBEYEKFMc4RAybNCB3GIIiX6Y7anr2FEUprP+/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661299253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L2BvOr6oT/iu1SnXUWv+LBIA4j02h0vLS0QeKEWjT+c=;
	b=i2mQtLuNRmQk8BJg9P6mcbTEwfampGpGEPaEO5aNGcvsQCSh6rNOjdaN6VRtF6KS
	+EZH2N4yp137bFEKcp2zHZNg+o4Qs7Cb4pJHggRE2WRewsRRz7jC1LrjEi96Z41oNAH
	zDwFvu06Gw/o3Xo0EdUVnxQDl4WPNM1p9hfyHXfs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cd26dd4c-6f941213-10fb-4e4a-b19f-087e79792d17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 742f225c85d3bbe1f517d791bf71c06c0a95bce6e630fa9d5515f7bd6c7ac8d8
Date: Wed, 24 Aug 2022 00:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661299252
