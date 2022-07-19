Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2AC4688
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 17:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658252212;
	h=To:Subject:From:Message-Id:Date;
	bh=rnzbJ1h6XLDx1WZ6KEl1wXXP57j+hCMv/LlIDKZIzyA=;
	b=fi28sXNDbPrNgRCLAYW5fQ4ZxnCpQ5Ar0CqcfVJLO+v3tfddexeRRW4iHQPL3C8K
	5YKfs8alzAPsGuWasyjQ1JOkn472SMoF8SgPnXL25G6BA2nVtMedqIQDBAZHZ07fbMf
	ltl7SXCDoesLzB64Q7FVvcXOepMOOdGZ34g2iVcQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658252212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rnzbJ1h6XLDx1WZ6KEl1wXXP57j+hCMv/LlIDKZIzyA=;
	b=IP+7LA//BLcmN+NWLjwdMmI/PYUxFZK2Ak7xP+lYMHDd1/hR/D02e/hPLMv+hhgD
	haVkatFjtYBf3yOX7hR97Rgnr71Ox0uFC+vk5el17/EusFYvfgTQMkbrfMIiR5/dizO
	Yh8FPu7M8lLWL4kh0HT1Nwp1H6uad11ZP5tbXSXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821788b844-95ef06ad-972c-49af-b7dc-ed36d075333f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21c404067bc1cba893109cd06fd4396c030aa03af6dcea5bdc8bbd5acaca8d80
Date: Tue, 19 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658252212
