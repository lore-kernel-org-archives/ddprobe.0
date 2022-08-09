Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B8C4428
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660054252;
	h=To:Subject:From:Message-Id:Date;
	bh=ycTwadr0gwuQ4jkXbwcbVp267OvIxAa8Fx2kZWvHbZI=;
	b=TloEi5hX/YPjCvGK8XZoGAtURHCf0cxUftWmNj+j5yCIeYUXbnzk8vFNMDwNvCHR
	+RPn6HNJEC252reB03d2qNA1oVzbXZ7Vr108bPW5HPN3EK4lnSXz76BixBJhGHLMFXg
	T0oOJMKNtGwfQsHRZA0KU7Rfl3pFtBLXaGzU/3LI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660054252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ycTwadr0gwuQ4jkXbwcbVp267OvIxAa8Fx2kZWvHbZI=;
	b=bFyG+8GDNirKMGZvzLA5nLg6jn2MX5FRMUP9kKzxIKoor4wthMYF2RrPDsdeKH+J
	uE3AaQSoUDQP2UZZLFefQXRmRncnNl0ejP7ue0sn6EWC6veyKcZD9rxlHCG3z1zW3Gn
	h1pG9JZn9COi7K1Xfre8WLcCIZaCkKSlXmhpLNfM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018282f1ac3a-75647e74-dbe4-4973-bd8d-79293f059744-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca5b1d8a1bead42b683bf0ea11b26d78a218986bfa4c0e66adf68c53865dd469
Date: Tue, 9 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660054252
