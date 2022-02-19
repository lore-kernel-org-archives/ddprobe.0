Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC15457D1
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 23:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645311685;
	h=To:Subject:From:Message-Id:Date;
	bh=OaKXgBWHhkC1G6cEZwZqdQ9daGnFhvW/yEEFaFrQY74=;
	b=JwXBfRVS/gT2dyFWEPcf0tuIzUQpMlCeuTFhZebGsxMIfj/jKd3hbn6YhyyD9+Ys
	5evpuHa+c0zUvLCL0W4MJ1eDthBsNnsO8t4Th4gK1y+Rs4fHPa+ZwNmW1MWd0vEFS6J
	le+nn/0brbzVBx4YTdGWWrsube8ljfYtCkqXyP/0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645311685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OaKXgBWHhkC1G6cEZwZqdQ9daGnFhvW/yEEFaFrQY74=;
	b=NqhbvqtLKUpbSiK+eB8dsJWZojNqBiajCigyccW7lyQpIDxZ2V+GUtTv+rTqJZnW
	ni1oLYovaGjPHARgg1w2Mv/R06nPQuNcSR/v/TfIBw1OFL7FR5pAk1xZHmpbMv/Zi9Y
	3BhujIXE6GQw91HEaJMtfhQaP4n1i360iSx9kgJ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1437f0e3-d807922b-7d5a-448f-bdae-a849e0e7facb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59ee031bbf888867d75c5e2de6d15a0c35ff8931e0bf5ca4a54a4bfbb9ff68a1
Date: Sat, 19 Feb 2022 23:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645311684
