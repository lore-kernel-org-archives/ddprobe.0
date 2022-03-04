Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD83A22
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 08:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646380885;
	h=To:Subject:From:Message-Id:Date;
	bh=dFLOmslBlcGZpBl2Yq91m7NW1HLfHyCGvIm+++prWcs=;
	b=PlvTEpQCVGthDfPphBum7F2ZufI0MJiVJXXK3vlxMQK9VKbFQL9yBAyyTrtNV1m2
	wIESWBPuAY3Mvmmz0Pzm9XzTjr1icj56M1XHaHlMn/7CfHjD7UmGaDvkgBMA8WHy6E5
	ufp2y6wXD779kWhJUGaIR4fqwfzLUdpUCllQpptY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646380885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dFLOmslBlcGZpBl2Yq91m7NW1HLfHyCGvIm+++prWcs=;
	b=CAa8jc37+9JQhgVsMxiMNU9TWZuv1Q8o0S4MzpzUIwhBAXew4s5p+pYo4thUgH6p
	fMCs26ZRN3bKe2qyoXZo81FtADUl3bJaO/q9oR16LtodFxoFTjdxu4ttRmeHd+Qa9+g
	olnMy1nqjbE+vm1558CUaC+fsnZOUjmrS91K8CUE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f53f2a2f2-2d0cd4cd-ef6a-492e-b966-6cd20b38ddd9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 050f6ca6e9e2271241095277eb2b3249418d83900409bc6cab6c8a984ae1c4b8
Date: Fri, 4 Mar 2022 08:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646380884
