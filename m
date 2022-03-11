Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22835CC6
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647029485;
	h=To:Subject:From:Message-Id:Date;
	bh=aH09TpbEVBA4xQqwuqnZgN+sEVWu//VqD965mQuYiTg=;
	b=igprmyexV/2wRTJaSaYKZy69KsCNe1XFRYSmdffVDzTHueaSk7QAkzZfKNccP+PM
	VquYu9W8bdLVbHYDY27oX1ycs1xKVib9VHJnzTcZG+S6RjIZl1N+PIRnRcdBFVdhZVu
	EgU7ujurB/0Z4RfqXCvbPh3hngxmDWo9ZHReK4bg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647029485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aH09TpbEVBA4xQqwuqnZgN+sEVWu//VqD965mQuYiTg=;
	b=dXwIplbLw1bYLPE2od/68CJcGDsEiS/24cAwXCeQBHROk230wXaXWxv8EdPyxO/i
	MscB2mkLVQq4Nye+rXP5s82Vo0xLISmK4rOkhqyKXn00pWGe+laxXY0vxxPGetLSW7m
	PW2F6RKC7GpsaqgGRjj6s3Uyvx5BXRohfG8vYk+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a9b7d2d-0f365635-f456-4f7a-9b8e-4ae4b2444b59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eca42a0828f645be5df07ebd2427b1c4f7c2a80d8bc48ad52459e4ce2b110106
Date: Fri, 11 Mar 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647029484
