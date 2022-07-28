Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427677A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659045052;
	h=To:Subject:From:Message-Id:Date;
	bh=g/vcUQwj7WuQkvYI0ey5jfBpYNAFfkVfxl/5i0IVFBo=;
	b=Xwp/FfQuDbOy9aGBkzX9JAquA6rsvdB556KGJRRAensa4VSvquRxHlA+5lqqMGlG
	CGCno3QAad6/OZYMyFmH8FJ6YK6wbUakN/Y7KOwEOXSlsYFv4RYDI+6GNigP0/KGrsf
	mgXdgAnv60eWEC8FUakvpOBtndg9sMKtDwAvcDdE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659045052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g/vcUQwj7WuQkvYI0ey5jfBpYNAFfkVfxl/5i0IVFBo=;
	b=PVxNnkYrTdiEFbHezxR4xKxe0b9cSZ+suqs0vaAyk3WMrQJLDVm60zMFlb485upm
	N6e4ujT89FFvoYelo6LaFboIHjQE7Z37K6KsBFaAQZpaPosJTic8xYg4KmVdEYkR3oU
	+NF+OjMMdzbwsFbSwDrjttRlkR8CI9PKz0ZWfmAA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018246ca805f-82796637-8038-4444-ac6f-6c8fc24de02d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b56b2c61e88b40c9c5ffe178ba7dc7c07c7be62ed8bf01fd1f0a2de2f36f29a
Date: Thu, 28 Jul 2022 21:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659045052
