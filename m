Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAAE91C04
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659800453;
	h=To:Subject:From:Message-Id:Date;
	bh=y2R9VtYFUhgPYl8brjlLGSE0AWthBPmZYGAPoQKH72Q=;
	b=VHyx5jlupT5FixHjNXnSOLZjtS4iYh5dAJKmD90csBdOJdBOfnbQkoCv/Y4IAtT3
	CaxM7PRv7mn9hIYJDdkQi3wAhv30WpBKnhXwTE6xajB1cQVRSfdWXb73wfXgeABzo2G
	wLzK0245Cy+UplhBmFXTQhFttXJJVvnFN5Dbr8EE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659800453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y2R9VtYFUhgPYl8brjlLGSE0AWthBPmZYGAPoQKH72Q=;
	b=IbCEvKt/t3a/sh0xioynTccxPlWmKw2Q6+Fm5rHd37o3pkKwmJcIwC1O1q4OvabK
	2r4YNN1gymbRvHyNmxM0f+eVGcNWWvq7SUs2USKjFZcKPwfrCGojZtPOf5HHgOu4zp6
	v89FBBb/Y7HhQ29tR/jMB6WtwexJcMuRYEViy71Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018273d0fdc8-a0ee82e8-dbb3-4ace-a952-47974f420b2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d85b2b612b68abe1391fa8267ca3275f475f7fbdd0ab6b2b6c39a054367d421
Date: Sat, 6 Aug 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659800452
