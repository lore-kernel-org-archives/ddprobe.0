Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6318E5C8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659297052;
	h=To:Subject:From:Message-Id:Date;
	bh=YqpjaPz0OWEiyhbuEc4euG5n4X2ORTSXr2sdSgq+qpM=;
	b=NC8Xb9pr41NpZ8RTDFRNCQGRW3/mXR4lc5lH2uZy+WU1MJajKuBjT47BpoYFYZNO
	9AL53uagt2M3bMKwKpD7TBbl0Z4odsgHvEYJBqAbgCkrjaxavwOKXMOEV1A6TTVF7Z2
	3n4Q4mUKDnW0ENYg3NvBsB39N7YFXv8skYj2a9Js=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659297052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YqpjaPz0OWEiyhbuEc4euG5n4X2ORTSXr2sdSgq+qpM=;
	b=fk6UVhchzbuIJxjlyI56dcpLYKtMWRPp4iM8sBJNugdAva3r8jY8gRqEHH1nCsjz
	7vml+ksbHW5ER6ASLNash3KVFRZjyN8EXeG5lcjVC6PZouAeqUSc1YiL2yVUJyf9jIF
	8WvTMfM2Hvhd0O+wRi+6mSofXazUVVT3JRuvtX6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018255cfb79b-e6a0fa7d-58e0-495f-89d8-f9113203921f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 944d9cd75e1ec2c5e74b65ec0255a96c5bf9ae1c875d4dc40f104180bea44f79
Date: Sun, 31 Jul 2022 19:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659297052
