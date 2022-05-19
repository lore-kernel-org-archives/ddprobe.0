Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253C81FAA
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 18:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652985479;
	h=To:Subject:From:Message-Id:Date;
	bh=fHIM0qxdtT3Fo0Zhuc4uqb1CwZbnQqw3YM4og32SGHs=;
	b=aa2fyv2VbgeqaSYc8nxlhJcvIW+zElLZGRxyrX5l72HEB21VGnfdMVcOt1mT852e
	PxMy4BDerqhW74KxkRyHOij009leUcsN2K+Px1w/rygXvlzCbEGQl2bk+KDXrVDlbet
	40TMp5K8WlzZV4SAhiiV9B6tnaCjGgEQu3w/4ShM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652985479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fHIM0qxdtT3Fo0Zhuc4uqb1CwZbnQqw3YM4og32SGHs=;
	b=QxHN/z/pMYVYuPrdfLp/XoiBBhjXHi4n3P7GcVoUWaNz5BU/ZpuleU/y0nRHVE/8
	q2lsu4SWqolBOepjdUY0PM1sHCpxsgHNVfPX+Ad5GUgkHEpPofWU2uJgE1ZY+MVdhH8
	KQqVDf8k2H+ii9XUc+ppoIjL9qqOJdG2LUJoi5do=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dd9cc07d-351708de-c84e-409c-be96-32abbedc5ece-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8347bc4acb0f959960921b3bff8d6de5ec2ee9dcea6c9f82e07c1fcf21286689
Date: Thu, 19 May 2022 18:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652985479
