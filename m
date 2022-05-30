Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C80817E8
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 08:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653899279;
	h=To:Subject:From:Message-Id:Date;
	bh=hVN7pxjCI+cIEze5Y4u/5Ztr7ouY0GY/z/yu0ZvBhA8=;
	b=armlQj2WwZrY1VGi6305TpeUYAIooGAwCtW70pbuSRdmQjd40rNO11RbT6H5Ls+Y
	KMyBMPS2Eerp+VbFB/UAejcs4y3KP55QBjyUlxSknc4LrKseERnZ4tVvqdiBjqyndBo
	rQGv1IjqDOQMA2bQxdJWywMjJGAe+kenQJJHL+iM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653899279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hVN7pxjCI+cIEze5Y4u/5Ztr7ouY0GY/z/yu0ZvBhA8=;
	b=VyMmXiFN6YpuqrGDDD/RRa5vFWvHyAibKLO6F7EeVdqcp0OiRrGAoWmrWkZ9UGFr
	XCOTKFAjjAmVTLCIki/cFqKB4gB0e2iF9RzU7swjw69+bf4Go32MzCA8l7xjehfxDi+
	CzDm+Ppd8HrkSO/mVomGc3BWY5kPmifcVV0FT9II=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018114143be0-56e94364-cbe9-474f-8651-fa721902a27f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 856b1f66c7f89fe291c59f4e8363827f62ee5cee5f2c0f43f3a610aae5295226
Date: Mon, 30 May 2022 08:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653899279
