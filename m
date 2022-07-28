Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3747A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659033052;
	h=To:Subject:From:Message-Id:Date;
	bh=3zNNb68BBqGNKt6+2WDlWUsj1YMQUCY4U8b01Okx3QM=;
	b=IDoTZ13MZXYjGR0CJqCDV6lK14sqaYCOKb8Hh4JhGGeYputJdLcfNXvkk8G+XA1E
	x9lzzClhbj+vPIZm3hhopTr4Lun5OZv08zM+LXoCJJTqP2m8GV2NStkfzIZUyWsBRiB
	s63cCwJZfS/pa3bhupY/h8ORtw8vUlSyyi4+I4wg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659033052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3zNNb68BBqGNKt6+2WDlWUsj1YMQUCY4U8b01Okx3QM=;
	b=J/j66veJPHPPDiv8YF1uSb0dFRkLBuUbyNHpfM5vcXkzkfTFGmWBR4aVrx4Ppcix
	K4Yr5wmHuPuppqebLTQkQReWxIgWVBekuj7c5nmOBnfae40eVCJRIDPKj+/PZQK6hgh
	cUWmFAalLcUfKJYBEVmcOsBAqU+KHfYl4JneJzY8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018246136576-0649197f-5682-431b-82f2-c6f412fce57b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d16d3197cc3041e12d13bfb1bae75759d8bcd90e635d12a516efa12ee1711058
Date: Thu, 28 Jul 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659033052
