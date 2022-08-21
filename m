Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A33D936A
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661042452;
	h=To:Subject:From:Message-Id:Date;
	bh=TVw7JfwC90IXawWjzcZfRDW/lDwSPRiLG06iUEAb/x4=;
	b=LAiC/rfauHXR3+sLjP7UU/nGRdoUIvAIYpQA/0recaLqkaZi0D3vGXZsfjNKrHbQ
	Tf77iXh9psP/z6tuhqZeIupZzF3bDTe12j3gQ1pHRJYVqsX2m1rY5cHB4h4zUTdiEtX
	qFBaKhwcVYfPtvtccb84zyTMT6lVBpK+Cox5NlBI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661042452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TVw7JfwC90IXawWjzcZfRDW/lDwSPRiLG06iUEAb/x4=;
	b=GvihpiCXQ3m4KHF9Y3yJOHR54movNE8rtL9voEFgzvPaM95D0iBPpuvdKyI0VDDu
	/fcOmz8UYHEihGI2JM4I6hNIN/BVTSTU8zDUZW/x6jvB5y9gDulEDpX2D35N80g4MHa
	YqTF7ihSO0hbh9B6Mxb7Un21TWxFCzTQCvWAzmnc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bdd86849-a7a375db-b8eb-47e2-bd69-496ad55615b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d66ee09c24a62485601df696ca7c0fe32235dc448ddd338fd9b36b6dc397b5c1
Date: Sun, 21 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661042452
