Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8AF17C9
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 01:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657069612;
	h=To:Subject:From:Message-Id:Date;
	bh=utr2rvHVjhHOk2PZ45enGwLUOWccGpZT9akRNPNIOD4=;
	b=ExJq33XCD7dEyKL8SQ9JLPrg9c5AvhE/tl6ru2Gu7W6SaU6ry6UumCRQOMQwV5WW
	kIVAdJqCt6+IYbIPIgWCdplEkW4sksrhYfuqGzVIngMAKlCRmLy2Kbxf7RHeSqO4Or0
	Vi6uPy/oEyS38de7Vz/RgIOyQkBWbbuqBiDDxdgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657069612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=utr2rvHVjhHOk2PZ45enGwLUOWccGpZT9akRNPNIOD4=;
	b=cgQakemmPJ4IeJFT+jDlluDd/DGDHWK0vggDmX2IXWDVuoE7d6pkaRu2LDlL+soZ
	xRUPLC6pyRkq16D0NZJ3AyOUrCS9eSehXz/JvFfrJN7yoTZjqPYtkUCWb1kDIQdebd0
	YjXS3TTGRE75ZM87Qz3EF0HQxCdb2k8+GZbznVaM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d10bad2b-5492911c-b631-4cc3-8213-b50197026afe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1d4b4860f5a4e013cfbb5b318ed26c57711522d984a4e9d8c4a647463b78dea
Date: Wed, 6 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657069612
