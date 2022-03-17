Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6642F33
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647528084;
	h=To:Subject:From:Message-Id:Date;
	bh=80rZcF2o+EGZMHqsrjiwaf//wO1RJwu5Z1WWRIhjGfU=;
	b=MynlRauzspXlF7ZqoOQuKlGYGWmGiohz9gYMsgZGCg2aDlqC8V/A10lKMw5k56Fw
	9sQ8xNAkgcmUaSzMAW3CtpoOb1IqpK1c8RzU9NTEwGEg0kFfv6PU/MuZtNBXJCsu/mE
	vM6mfsplbsWHI+EGb3hiAZz7ewBkCahNDxg/VOtI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647528084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=80rZcF2o+EGZMHqsrjiwaf//wO1RJwu5Z1WWRIhjGfU=;
	b=F/bzXQTro/zSfNPMq+3VM3tFZWEde1yFuBTPyT7efdht2LJNlEuwLV+VWXHYU+eA
	wm0bKUMIEX74yJK5LHbnadC2X4DP9W4LVMHGzmmJNxnQ3164OyceUwN4JJrjJUpFa7a
	W+ZDBr8gyGWz2ZNYnd2MqAT7mUa5eYeyG3JilGTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9853852a-2b0a565d-32c8-436f-be66-2c11c743f35f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa21ecd2f88dec94fb2070d43af31cc10b549ad41243cdea9402b4a750b34e83
Date: Thu, 17 Mar 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647528084
