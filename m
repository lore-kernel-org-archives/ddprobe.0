Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CAA728FB
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 22:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654641719;
	h=To:Subject:From:Message-Id:Date;
	bh=hoV0J2zS11PYHy9iSvz0WnDv/RG/yXd3Ptx3LtS17OE=;
	b=JUsWvbQtR+uur/8k12S1PAsjIIb03skgKgXTY/irUvKYVArlRakp+U26N49Vk7cR
	PbyyTy8RrIp2NrlgSz5TnF1OTtIA2GaBTfVXYqVRh42HmLhAay3RHhxxJc9RQTZHdoU
	veVZsWPe51mAQ+wohmsSv8L6ObrDzZwzw/UkHBNI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654641719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hoV0J2zS11PYHy9iSvz0WnDv/RG/yXd3Ptx3LtS17OE=;
	b=a01AEzOgsEteJvLjfoRVJKEXBSmfJMQSk+njYGw9yrB7fP/wGVDydCML6Zx4MndX
	a5TiWtwMXmphA1a2PUyomQeECWWTwkoi52IOLKdnj4dL9qC1jaXQplCAeFjVOey4jfc
	GsBqGlqzos3izeuB4pWDvmayuYBY63wojwg/EO2c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814054f7c8-c168b411-5f65-44f8-9a95-39a161c77871-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3dc81250b2e3d70449978fc3dcdf949dc520694298e7187971893a56130a65f
Date: Tue, 7 Jun 2022 22:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654641719
