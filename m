Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406125A1F
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 19:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646940385;
	h=To:Subject:From:Message-Id:Date;
	bh=4Dt2MbTYK5XyMWgFGoJzzjxMyA9YyJj403F8nBou+pw=;
	b=Ct0Fjdjv4jDUbml5zWg3UFCSD/8tMGEzHFTscGuICj5ZmUJ628Am7wCIYZGHDfDF
	GdeuN4ZvpcXxcLWWap1Bcayo0ZAfWkWOZHuWFK9rEpVLTodb1vR2H1K5UByYTL4/mgk
	+cZgZyfNh2AhjpIKND/aBNb7dT+m97ckWsxzDu0o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646940385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Dt2MbTYK5XyMWgFGoJzzjxMyA9YyJj403F8nBou+pw=;
	b=CMrBM0wY+4u3HFCIw8wJ0eFWf67h8+9XUOSKEDaY89xEUA9uapNUo84tPFNLo914
	X9gxOK/1zyFI3ZTW5QpZqCuYC/5q4v5GE/uDd0cmUUxyquKm2eI6Py4b7i6MjMtQKhU
	5CHnn95L65RSRPMOwJHjrNZ+ciMVyUBYgwI2u3wU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f754bedfb-25dbec3a-58f8-4f2c-9252-d39e64bd08b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: daeaf808df3a19915a9fc3c33bed9a1c796c0c8ce5676cb956be294013eef592
Date: Thu, 10 Mar 2022 19:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646940384
