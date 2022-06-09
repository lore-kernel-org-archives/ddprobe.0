Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5353A7A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 05:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654751519;
	h=To:Subject:From:Message-Id:Date;
	bh=vlM0V+aLXZ6u51CEosDoXXaZ/ZMJbAlVui7cbXbqJ7M=;
	b=SCU6k8Yi/LV3Adpznd4bEoD00tASsHhAsVhMhFPtxZUvERLUq2fOiTIRvYc/Qudj
	PMU8FWcEccRnUC7KrhBj/kZZ259uHceRYHjklsfEk7DbF80sfr+IVh73EqDoeDRp0fr
	lFYl5cTUwqT1W9g2zzsEcQigtpk7s5AlJ1D7+0Vc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654751519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vlM0V+aLXZ6u51CEosDoXXaZ/ZMJbAlVui7cbXbqJ7M=;
	b=W5WKX8JKVWYkmt/UHGYODHG0HykKDj0uPhjgMfwhD0FMVYA4grNwjkhvD/PAb3bH
	SlLmjNnPbgP3JmGWs+BIk+pfUW5Wm1L9AMI9Vn1bOAH5dmxmmUazXPqxZARLy6yBh5O
	XhnS1aYPZ3us5tBAV3/F1g7y6o3CZ9LveA6HllNo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018146e061ff-d073613e-6470-4871-af3b-a257bbec2e43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5acf1f3f817352dc2ab96bdcc2698282f2b767ac0f069c8baa45681f091ffcb
Date: Thu, 9 Jun 2022 05:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654751519
