Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9AB3C35
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660042852;
	h=To:Subject:From:Message-Id:Date;
	bh=FxbuhsQw3DSROQkfAONSVTdDQTfFABKeA0Koqzk6KxA=;
	b=d8haZ9SI5QLj1sjLnVd8DTRCluMjGS3ZydqMLT0fuqOJTFV9c5CI/+p7hXvA99wf
	kiSiDLpfln9t51jakanfplMNndAZAETYBfsGpFE3d7huccdxxfvTBqn32cUeOg0N3IC
	qlkJKbHTuAuzC9mJZqeJhHy3xuR9Vm2NcOmGkKqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660042852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FxbuhsQw3DSROQkfAONSVTdDQTfFABKeA0Koqzk6KxA=;
	b=gQqVMWJ6WA2zaFb6L0lQoznJrt3lrT+V/V+ToB9GIMX010582Vbj9QoxxiyD8g7D
	kSOPFImT6b7ZeYb4VSemcsOE28XTNUW08+XTF4zwbVxtRJlROnGxfmWGgRYUraIsNRw
	WNer71e/YCZnq0TgHkkZW3WmoMRskvOblSuEjsKM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828243b901-6fbf82a5-2f1c-40d1-8b68-c817d59c9ac6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77821ce720a21f257b11da48fc41716b2bad827b670e47cd223ad08c7c8472ce
Date: Tue, 9 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660042852
