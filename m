Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB697F
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661216452;
	h=To:Subject:From:Message-Id:Date;
	bh=W0K/GapSPZBq3MbwKLA2uzm3/3byGTF+JO4c9SVBEh8=;
	b=gdTHIcO566mitV86W9X3XVgLXO1DL8oBbUT9S1u6CRaGdvQ5mebUlMOFid/NgFJ8
	AxMkifdUQcd2NCF+DhkPg5UhHkCiTeYM3WfAIMz0hiaZ/HmgZ2hVvyFB/mjN0h7zU+H
	hrB7cxH5Un0fW1fiBDSLgKGspp56HOwVBjqGMQpE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661216452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W0K/GapSPZBq3MbwKLA2uzm3/3byGTF+JO4c9SVBEh8=;
	b=DnPdemvJExc0ydOIKWUhBrBSLbRutXIPSlZw4bcY0g+GcKCJw7Q+i51u8tFbXvru
	UTZ3vD+hfXr3uyPrxASGWQSq3aEdf9ojH2vOIdTLN1H2f1IqA8SrkzdRcSK+A6AIld9
	Dm+4gus+bUH3UQY7+i2UP/d7GlybN37I4Stvc2dM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c8377004-438460d2-014a-4434-955a-e1a99baf1612-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 028ecc89c64a9c0b1fa83d911828c8f825a3280b571e4466ba1d59dbc71ee909
Date: Tue, 23 Aug 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661216452
