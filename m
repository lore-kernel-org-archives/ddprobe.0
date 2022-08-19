Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA057B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660884052;
	h=To:Subject:From:Message-Id:Date;
	bh=aqUfg7+fvMFfSq69l8/J0fhjcv6Sb5729i5LxsrrEZ0=;
	b=X0By8XelSt66reu65buHgITE8/d4yF1DrrIZxO/h+UvhPggkxFiFvd81CYHzwLA+
	q6KUAQDFdeNhqa1FwZUVz1VFjL3+LtCInulb1E8tf5K+9b/ap5Nz9eey/zQE4QHtncv
	7vVD26IzcQdWu1S3DbedKw1XXAOIybWL/O3D/5S0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660884052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aqUfg7+fvMFfSq69l8/J0fhjcv6Sb5729i5LxsrrEZ0=;
	b=iLcz9e9qUEeGGtaz1WBwz9znjY8NOD0jayishKUMwMQEbO0LgXxcTJAFu8spdjc+
	uKO85qkqrIQ6uI4NPK7K4eg0IcfnqCO60oNv45LIMoG22Qii36EXa6JjT2FExnqIm7r
	GDRcQ92t3HsLe3TUs8xWS1cBrv7lFYEJjTmXxGEM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b4676a5a-0279f1be-dfe2-4e24-8728-417f104899e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5df3c01a5e195935eee8b9dbd1b1fb1c3da7e90236bc901c8e8b22b1ae6cc7e4
Date: Fri, 19 Aug 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660884052
