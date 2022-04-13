Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCA5B28EE
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 11:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649849638;
	h=To:Subject:From:Message-Id:Date;
	bh=v1jxrfcT9T7Lpf+BbZzqyMlLrchRu561a1gvyLng7WE=;
	b=BGCJOH/Pcj6afosOsd4MC+z8QkS4as1OZiyGa5zLA4f0S1e4MZDrDBrFuFRy+ft4
	63wuy702pIFEQaJQK+XY3d/ghdrw+AJ1Afl4fEqTg7kZzLHnRPzLHt7XPCUeQoFASFL
	yoezubbOQsdNWYNmOadlpVM7MaPqPU397ootORW4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649849638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v1jxrfcT9T7Lpf+BbZzqyMlLrchRu561a1gvyLng7WE=;
	b=izKQob8Rwi20o8iY2zDDKDv7l8638sjcf+0qgBQLvoICwkLAY4SH5pY0APPBtorn
	9yZD4EYMbToQSFcC6Mo8Xy73SIP3IhcErO2n16emjqB/yS5na+xjgfZZzXwf0Mcz67T
	HtYScjNfVe72/SVMdfJoJ3kJOVKgDytGphQC8u1c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018022b39d71-85090440-8f44-49de-bc62-f9a6ca2d34a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 926c4bd0884d1a925c892b1e350f284fdd8150971dba717c2749c14e7055846c
Date: Wed, 13 Apr 2022 11:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649849638
