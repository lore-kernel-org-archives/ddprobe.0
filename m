Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2DA17C2
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 03:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657771012;
	h=To:Subject:From:Message-Id:Date;
	bh=iXbmG0YLKRsQ61ATjpKzawTDyHCVg78KVGu0GKLfkzY=;
	b=I0yrHi+66LmPAcR23u/MpPsHkOEUSR0x1Hl07pKZymC3PvsyxZvlqYSPuXwjIId3
	cvDBJz2SkLk30zkmMN2Rv2+SFe1/3WPofb8RaZJIiKncDJy0jAGTY6Bf1R1Dw63igoM
	0ueaUqhwD6X5wvvj/oWSTYPBHVPzdr4q+epQ7VrU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657771012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iXbmG0YLKRsQ61ATjpKzawTDyHCVg78KVGu0GKLfkzY=;
	b=Cdw184yfDOtkzFTRjub5WfDcjQcJ/c6XSuxfRz7NEl2DNDkzKAN9ITMsNA8EHt90
	FQ6NOwIn3ehJeTwgfbBE/42Tg8tTEGw/VqtHfQhSrlMGJbdlEEQtuJbVuRcTmMLpHlN
	aNT5M2+W6z7E5eJCwqsQQrZ2EKXIUpkAJmeQgMWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fada30c1-acd135c1-a359-413e-a320-4533206c2ebb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98b3f50511cd4685aac8eb7f926633761ff2751d37752e1aabf97e9981ca7cd6
Date: Thu, 14 Jul 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657771012
