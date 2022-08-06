Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6AC1114
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659776452;
	h=To:Subject:From:Message-Id:Date;
	bh=2/B/eekzxlkLFBV1TYEWMObl3Ap7kODkLp8QnDp2ZaA=;
	b=YYs2KAL2nYF0ySQ3T5wi8r4W19qdg+APVdI7bPgtfUekbR3ojq6bJBZD/zwa44IB
	w9awijFXkDC22jnW07pxUORuEPSmIcwrK7cWOumtSmPI99sC90aXa6JcIV0HOOkZKGe
	Zm+PoJx/MCIvCNrwNSJswMbIIXLNQ02eBQfTNyyg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659776452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2/B/eekzxlkLFBV1TYEWMObl3Ap7kODkLp8QnDp2ZaA=;
	b=hpr6zwcH5tr6jyp9oeWVHFOj2NMvlkwKQvA9JXihKcWNodDQ/eLVpb0mfsipmVcY
	XnWSgemj9B+2lGISYWM2d6A/NZg+GM1tVXnynKCAwtnUfKgmyXMOzTe23FIcOpz6Rtd
	KIlEdZ+xe2vWB3gs4ux+JMOPD+en/kSj0ftRypbU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827262c7ba-947fddea-5fab-4d19-8f82-f954862285df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c2a2bf9d206148140cebe108fa2c3e451706f832844c033ba43074af042d1c7
Date: Sat, 6 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659776452
