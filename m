Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9C27A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646882484;
	h=To:Subject:From:Message-Id:Date;
	bh=qNIc6dEfYu8vFcqupUAAcyrKMuY1M/7nGAoF/i0Pqss=;
	b=h8Nno74uVibx2wSm8v/HsreiDwVp0JWVCmHSctaBt8Sy1bJI6oRdBYjmP2GMMiga
	Nn/HcLuADekkEQPmJKudHS3yvRsCCyFi7vOTIW4c2o5W5vUfdlRK3D48QUQLLAUckym
	xA97r+6eLu7kS6cdxhDgAZrvWTT+FxcfhxvBKXp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646882484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qNIc6dEfYu8vFcqupUAAcyrKMuY1M/7nGAoF/i0Pqss=;
	b=hRa6VblrX3kUU7MZtYyWMlvHc4gYwHjL8d6+sPjlzN9M98CMuW33p4iG/+cND3ss
	C6IU4LsDrzrowJaB6VYuWKzh6Dg9CpozCE5gvHh/XU3fJxHJQwm+8CZLNtA+RBWW8Xx
	TnpNAKmfnKZoyZN2gzLc0EzqgOYV+sEgOAsFqDs0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f71d8722d-2f3d88a3-4ee6-4d3e-a1ac-42b5ea9b37f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bdf48c3171cdee3e04ab54bea823d313c66bdc977633f7b44211f1ab347ade4
Date: Thu, 10 Mar 2022 03:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646882484
