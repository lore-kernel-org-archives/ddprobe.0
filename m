Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361FB28E1
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657708012;
	h=To:Subject:From:Message-Id:Date;
	bh=Zkn8gvBeZUP/2Nb1OlM6I1By1FU4UpllJXLiwRMRMLI=;
	b=XH+bWdMR+of8DALlK0c/7dQHPZKQzhCMS/M2Qvm7lMlAJr2W7/adWJC/SujXGteJ
	Dqy+lJImi8QL/c66sj/zydXJPpzVm3Qs9hIj88wDCCZw3mUhHU5n/4yIjkkRFh6Y7Gr
	xbnoXgDag6ViX99jzVCs1VACtkYXZrtjrq77tv9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657708012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zkn8gvBeZUP/2Nb1OlM6I1By1FU4UpllJXLiwRMRMLI=;
	b=To25B4o6i/IjwSCT01nsCj5Vliw5C6p/5Vwmd2G0u4DWXAMStJY091onrfzy/8ia
	PGNNGarrBskFXKHToJy1G9Iypek5iX/usI3AJLNQOjffGSECYg05ZGfxuniztck6Wxu
	24C2bnqZP6Vv0br2PMexgI6/S98FqZ0T/DVfC6T0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f718e316-008cb598-ea18-42ff-8626-2c936167c61f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8680621c33b283a03924bd8196301704bfeae6a59eec4d5d6adc28aedc2a6644
Date: Wed, 13 Jul 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657708012
