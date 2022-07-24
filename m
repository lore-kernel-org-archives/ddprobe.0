Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5C333C3
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 15:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658677612;
	h=To:Subject:From:Message-Id:Date;
	bh=wQhG/LNgHMiL/Dibp1AivG1PcGFyUEziYymWUb95xBw=;
	b=e6XoPbT7f/RylCI6EpceIgfkE+ogecXo8ppcExqDC0T4W+GJiCay8nZR/DbR4QNz
	KmxFG5LTm5PVWhx1w/GgeAZUlZuRSTCB1QOOi18Y43yEu8XhlKfTKU2ml8UR2kxn0Nd
	o+lSWdVieEZzfQZ7Dm4h/2xBRTGix329ZWtAJ2PI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658677612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wQhG/LNgHMiL/Dibp1AivG1PcGFyUEziYymWUb95xBw=;
	b=KAQgbE0CTXGUF729cBKvshcJB05njilOYqjGwrPjaQmWtREpcQQzOQhos/NnzM7l
	Enrs6riKhhZxBNC9fXEAyrmW3Rg5OimXUnRcB67ek+GBJGirH+uxZ9FE4phZhhsWx30
	Pb78EZymbrFsJ9/ImBOC0nIlLT63R7CY25dY0mKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018230e3cef7-82201f00-f0db-4e10-8ad3-228c32152515-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 423861dee8d8f38cd2da2b6253a51f41ddfc145662fa5f904ab74ad1bcc71ed6
Date: Sun, 24 Jul 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658677612
