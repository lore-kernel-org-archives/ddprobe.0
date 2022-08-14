Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD0B2573
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660500652;
	h=To:Subject:From:Message-Id:Date;
	bh=piZ1YzgSZ5lMGg747ieybR1o63B3XCRbl+TmuEo3lAw=;
	b=D7PGlqgFDxGGiwR3UPKc2L8ZUFWvPrHAaGuYaIA6m7THoCwT23QaSgkPlLvwtcFS
	tqlczXGFUrD56ReP5vYLmMzLjCIiw/t/F/nCauG+zcX1dLYbsHzpmL5I3eQtkHeqHfX
	GmvacjqVRil4MiHwjsSMfc1SXpl14WxSqy7wpyco=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660500652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=piZ1YzgSZ5lMGg747ieybR1o63B3XCRbl+TmuEo3lAw=;
	b=Ygynq+/s9JU0C78fDXPvVUgm1/5kC3PqIMhJGD0SSKrR/YiYXf+k+KWJ5bFW1ok5
	u5LRNx9rQTAgt+aJ21qans9HFukK3RDBaQc67ojT0r0Roh1Nb7x9XuT5rh526o/MVmr
	vi9jdiEi4usGKUV8Jg69HIkirYCQcPLgLLr9v1+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829d8d3238-f8f8308f-e891-4813-9b79-a29cddfb6d04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f280782ada072ad38751dc6163c603cce8bfbd1c7cecc74cc88073fbe91bc816
Date: Sun, 14 Aug 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660500652
