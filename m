Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC69A29
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660447252;
	h=To:Subject:From:Message-Id:Date;
	bh=e8pP9X0jK8WVp8g+lvngrOjI8c2xxYpVgp26C8DcGUQ=;
	b=d+zItEOy3Ij1ROtAg09jBuWSDBU/lk6jwhmiShxanrIsiN4tEKATnr+lQkRCsvY0
	AGCzBqulMYwU/hniXse0wwU5ceIRjhz/r+cdU+oH+o+oYd+IBpP3m4llLUG/Ywl9vwf
	UEreW/rIHpikICmdsQOFGhXxB1Oyr6UWenEAmBg4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660447252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e8pP9X0jK8WVp8g+lvngrOjI8c2xxYpVgp26C8DcGUQ=;
	b=CQlC8mt9qjh1UDu/xLQIQ0lx+Hs7L6BL1sXiWpi9jbK0BpB9Dto5xeIrkv8w+hU8
	UBrV3lA0teDBZuNuGd5MniSB9AaR7IMMjpL659fxqQ+ffDzKnkL8PBTEPNEzRI/1RPC
	7Dr5rOUFzPp6L7EdPE3acLMHzrScgyzyFLnTIPnA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829a5e60a7-d2dca6ed-e111-4f56-9864-cec6c4909157-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7533845e0e23f866e8252ae0b153030febbf530e5913486bf5ea2283f5253950
Date: Sun, 14 Aug 2022 03:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660447252
