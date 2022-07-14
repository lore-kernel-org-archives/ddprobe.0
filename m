Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210BB46B9
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 13:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657804612;
	h=To:Subject:From:Message-Id:Date;
	bh=kyO45eJYNBAamDStplMvCVFrbIOL6Z7mioiRQOU4xZE=;
	b=Ib6K4cAsxVS9C2Bd78Mj9dnX2VIG5bx2+b138U8QxfFmOYoslu1kwHogBJfkEgRU
	+EzLsmmuHPzdwDB5mAhTMMtUVCCoIFFOY+JYncFj4f1CwKpKlbi8eb4EUdWwteX6LRw
	bglKAAvsKu9XfRlDsOodJrHLRjjjQMt//Tc3+Y8Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657804612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kyO45eJYNBAamDStplMvCVFrbIOL6Z7mioiRQOU4xZE=;
	b=je9Px4Sdu8L8uuVsNqpcWq9ETJ5w118U+0Tt/J18f65P6z2l9LJXDvhYy3HeOHbz
	0jCfY8JuJMg/nHVplAQaaycIyCvemtIM2jWNNGxCOl4OKEjqPXPjPOokfXidDHWDjys
	eHSypuoZPLfLmHvx621I0tv2YyhK4ImmpuRazpL0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fcdae36d-bbe20797-37a3-46f9-b90a-0946cba83284-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7af3d8fe48d7039d06b872dba2b5e0f7532cd887b6ef652640708d1ef98fac7
Date: Thu, 14 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657804612
