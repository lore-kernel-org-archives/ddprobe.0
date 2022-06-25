Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2057C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656191212;
	h=To:Subject:From:Message-Id:Date;
	bh=x10jgfFI6OFVKSURfRmj2N+NA+MkW3G7Dw2lZ5X1i58=;
	b=ez8Qgbx1s7X1fSECxfflCHwTXaP9oHZkL+O63t+d4ONy6Ag2fttOGZJBuuCWl4QI
	+w14RA/IQxGNI8uLIJTodcGxXMWNYi6NuS+Z40RQhnHmbmzXpbKPKZQ9ufzo8VK0M0D
	kizOgae0/VeYKLn4//yqaHgxe2gw6o0VtZoWXGSg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656191212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x10jgfFI6OFVKSURfRmj2N+NA+MkW3G7Dw2lZ5X1i58=;
	b=cT2ZME/1uMjaZVV1A4smv4sLW2sdIfapekDt5glcZcvnFOBdKyQ3x6uSquAzxeXZ
	kBjufOkVrTos5Eo/VDd+EeyDHyUN/VkK6gehvtYruUGryPayy5Ko0fUSMmMzSVc1ZNm
	kXhG97KQk/4+djyQQbcr7rFbXxoS4rwY3GfPlO2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819cb05b27-18e7f92a-4db9-4313-8b86-ab5649b81190-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10bb0369709f0d4e0027acae5d9b3ba7bf6ef4b0989954855a79b58b17b4f70d
Date: Sat, 25 Jun 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656191212
