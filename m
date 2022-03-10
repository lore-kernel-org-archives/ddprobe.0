Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24AC182
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646937685;
	h=To:Subject:From:Message-Id:Date;
	bh=3L2TMVBGi0eVAgogeGFTJfCf/DhqnyETj7kz8pmHA5s=;
	b=V+h23SWI3vjiX9pH+cll/EwZxc8JD3MwgV507ouvKYl/VdZ2rJy66r5L+bNo1KGm
	h3/YlxaGz9vCp40Dbg7bD3iyT6IwP5deylMgGl4LNuSV8JNnqYiy+EVKf1z3Qgrqqha
	mhvZUs2Hy0h17GuObslduqSQPZ0TyTKSLoaWlT9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646937685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3L2TMVBGi0eVAgogeGFTJfCf/DhqnyETj7kz8pmHA5s=;
	b=RQS+hU4u/Z0QlG5Cd99cfkMwtT1v72056VK/m/ErgzUSqGD2uqGaebmhhY8JiThH
	Kl2bofRWmyNQ0mndkD3YUUcMPXFYD9jzG6mpY3WUvNpbF9/ShDuruFnfHkG2gjdW1ZW
	7LNrAvPYn4vKr2V+jHmgyV2VaeLMtX42uYyirWmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7522bbc9-28360f3d-1989-444c-8773-d1b61b22fa16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb4fda30937acdba6d31c0a16f87cf09caa269eb07db0aa6935c6b82f03b8de5
Date: Thu, 10 Mar 2022 18:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646937684
