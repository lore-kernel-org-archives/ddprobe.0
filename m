Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533D61FD2
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645057884;
	h=To:Subject:From:Message-Id:Date;
	bh=Zkp37TPFN4nHMu4c+q2Z7wFzLcFVXI2UBKl7jM5/zAw=;
	b=W3xtLgt1lLQL9sacrue8rs8TDh99spS7p4rssZwHPrrrj58mdFP8vQYcyN/Gsxv5
	/n5o26duThugbVcSp32z62AD/L6AJSY4wAz+UN4V3FykOk14bsXmrfemnklDbpOZjW/
	KXlYD71RRHANQ6qjPXK5dn0HfS6Rd/K2hnAiYkNk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645057884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zkp37TPFN4nHMu4c+q2Z7wFzLcFVXI2UBKl7jM5/zAw=;
	b=i/WLBWWcHqQXaAKD5hGrYUGEk99daIOR9Nc7JVC2ckKowFuKS/HRG5wdSjcoa4LV
	Pt3JMaAxK5HH/W6V3qOp4IUHj1ll3Q6Tw2+u3237HmBodp7mPfKR1GHZDPocBqrQ4DG
	J/MOBHHEI2Qdpyqfb+PHcG5eXugl1YZBzIva/Ync=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0517427c-bfb7bb5e-9e3e-4a5d-a8d3-3d031f504c05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d336beabc7bc75d0ea97d5845561721e467f62f76ff3610140421f26648bc8e5
Date: Thu, 17 Feb 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645057884
