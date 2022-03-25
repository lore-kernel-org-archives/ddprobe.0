Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A25A28E0
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 21:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648244638;
	h=To:Subject:From:Message-Id:Date;
	bh=BHUCG8yn8d9/HzFTXZEzsC7hXjSIlP3/tNVTZOWnIwQ=;
	b=liK60adDldLquv4l7pCijO11sqXveKhJar2oiswihwSJzPo9zEsXLctUH6G41LMh
	tVEmyWEkrNveVhBQzPblBFObitZMqF9M9eSwuupNE5xlzWQBRl1L3JH8h9mbPqQx059
	YzdbCHm3CmURohFXGiMZw3vmrLmZw7PIFOm5PZJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648244638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BHUCG8yn8d9/HzFTXZEzsC7hXjSIlP3/tNVTZOWnIwQ=;
	b=aVifuJ5EkvmPAQOK3TvqcAyu77zFGh0k8GwexfQLY0N2ronMQ9xqm1emw67E4RHJ
	SsoDlI42MMawHv4lCFoWCO7qTcAK9RJgM6GnCe0IHfOYyqDSKlizeIdgjF7cQ4Jrl3b
	iuK964TaqQAo5svsNAmDVUheDQRJPhYRcPZlBF8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc3094262-5e29b4bc-3ca5-4715-8dfc-e8394402cfbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4688c75d262e7120e683efd2c3b57be663839067ccb48341398b26922fe40fdf
Date: Fri, 25 Mar 2022 21:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648244638
