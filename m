Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFD4621
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 04:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649477578;
	h=To:Subject:From:Message-Id:Date;
	bh=epKEsRcZ6Qtn7gI7X3tyNRPeRMNnqZhVYXF3Yq1WWYE=;
	b=Bb1OhDGFvUFu4cuUfkgzQYi/L+fSxuKBSQZJ0kXR17G2qHOAXr6tWGirANhimxd/
	mThSYUa7+I2ov6hzeF3bD7jNk612Tn5u18OaXGy49mAk+SUCKQiRjIDMW/yRi539rg4
	Gp5/tgHmdNL5QCzq3+xUM8476YNzXrjlQhG6/6tk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649477578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=epKEsRcZ6Qtn7gI7X3tyNRPeRMNnqZhVYXF3Yq1WWYE=;
	b=AAveqiIPeR437VgrRZtU4Alpkd5mA1DXc+UO+O2s0x0zTd8tTsDYGU4ZmwRWlDnj
	hW6Ht5/r6GThyzlddcLO4wDAcrbDZZS//PQO1z+wict4KmYpAKVPKabVKInlGMVcRLn
	aSOpY4VWudNPMGGvedjiuJwYRvxZZZHOz9gJmqyc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800c866e61-e51d8aa3-f0b3-4bd4-a026-136b51e54282-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91eaaa5ca477de764284359b1543c92cfd4c7ffcf6d7778a98f67a7d631c2982
Date: Sat, 9 Apr 2022 04:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649477578
