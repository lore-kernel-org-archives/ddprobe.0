Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F8619A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 04:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656217612;
	h=To:Subject:From:Message-Id:Date;
	bh=jxBrOoAx9/88yRswzdPou0P+TFIU6zxw5O3nFk47o8k=;
	b=Zuix2T/4a3heyjJn4+lY5XLpVyqEWIx7wjmhJFBwHZBsXVfmx/UvQdqA4OdPqXg9
	E0QgcLDOEbgpW5VO5Tql6aEaj4UOCKGYZmSDfrlqrXDxbvL5wnmTzq3WB1+anhSdptB
	1JRIOzS1jkf6xX0zdDzISkS0omkh8BQSBEYnKCbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656217612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jxBrOoAx9/88yRswzdPou0P+TFIU6zxw5O3nFk47o8k=;
	b=kCi2y8xsXkxTCyUWl8zwXCNDp4FfTddOySpfzM2TqaMLVb5/dV0ertkFmitRfjt8
	csoy6OLLsxa2DmnqZnyAVRD3LFr0SpxndmfT+Zve8yhBM+ykATcASz1Obzt0ZXv8bbV
	/kx0FoaJ34AvP5EzlrvqSar2ERzwa+1CjtNbKewI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819e433001-193526bd-1a09-44f0-8a52-b8a1804c2ba5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c03442090c46a04bbbcd49412b5f879e9db622f4a23e7c461701eb7181bd642
Date: Sun, 26 Jun 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656217612
