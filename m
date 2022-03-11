Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F47357D0
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647021384;
	h=To:Subject:From:Message-Id:Date;
	bh=Wm5RnILNc3Z8U2mJOzU5q4STDjp0CJgOvR2l9m9I8qw=;
	b=AvwgvafHZFWoUhVZSpynvm/T8gfYKNXz10jkBy/oiHYZ6N95pLEbiEVlAPaha49p
	rM79myclYZRNmbO/rDcm93raQQGadZSGlubpz0PcEemmrNfZsVvsBqpt215CZHou31x
	HqiqHOaYIHueuPmN1vb+cXBHwYMsAaGqv24k+QQ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647021384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wm5RnILNc3Z8U2mJOzU5q4STDjp0CJgOvR2l9m9I8qw=;
	b=WCN7UALS856EhCN2Miqhc5PDP+6BiojSmlvznZQgc0AQwIDczd9s4t3VWzqMDQCQ
	IRP571hosFaK7Cr35B8J8OPB+MwrsD3kC/VRvcVBmR+O0dPbvekgSvo0PXY743rfEJH
	X52VRiBBSha4tlfoBiLSp4kP7ptmwKc2ip8CGh6M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a1fe42a-ec72cb3e-2c1e-4723-b9be-b29e27d92ecd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 207a81f0efc74f119c1d18e153d4bbec4d07897a0bd02c6e034472323295f012
Date: Fri, 11 Mar 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647021384
