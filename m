Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D8F7E0
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657259812;
	h=To:Subject:From:Message-Id:Date;
	bh=cR+0PtndrVHJRwV8HjNVDsqsR3K/Z6jXS1uVGY/zCHM=;
	b=RhWLgZAkWno2+VhikITqyrry39qwTWCprfakCuh6Fsfd8221KNThHqaY/LwvMfFG
	SF+0RwJxgLNALLt3BrhC1qj2dLPzx+saq13C7V4ElGkEzUyuXUySzWSRaj7Z4saRKGD
	tlDzzNAU0xR+7Sd+REKUJzvlqzqIq5u4BeTZXQLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657259812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cR+0PtndrVHJRwV8HjNVDsqsR3K/Z6jXS1uVGY/zCHM=;
	b=kAZvHw/pzVemYFHEKQdWhWesrq4V1CI7xIhU/LJmI5nWcezDw+J7dl0JsgYkRrtw
	ANnQN1l1ikKHSZRblesvF2rd03ftI+JIHLNqCn7VxPO5BI5+j44vEjOO2QiGFklUNy8
	Hb810a/QzvJiSp1JxyTIMcrWX54fyDbXJ7Cp16zI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dc61e5d3-ddc1c47c-b437-4b79-a90d-99dbd6d054a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab78300dd7f2bfb92e98a2c0631f7707c663f156cce2821c762462592386d675
Date: Fri, 8 Jul 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657259812
