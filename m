Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8322938FD
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 22:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646692285;
	h=To:Subject:From:Message-Id:Date;
	bh=NfgcCp2z5DH9FE0cRKFRqoxLXUQH0sBT6lB7ptjLdjY=;
	b=VW0mdL8WTPi8z3QeprbmwpoO/Hzt0b4ZzW3eKxGzkA0ummIEROH2Qex+YK6zqyBF
	0GM80QvEGuvm+BX2H/TLcRA4KjfgZClrqC/aWDPXfA3TzeFsHjgNSpIpCIbDkNK6DC7
	qJfutM/8sYnom39jocZcqAGv4I+SvkH0PRdpPkTw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646692285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NfgcCp2z5DH9FE0cRKFRqoxLXUQH0sBT6lB7ptjLdjY=;
	b=frCSCA6HR8W9yp7yLemvijv8PDacd3QMQc2lyBgK2c0OXzttEUrfDubR1NgtvwR8
	JwVFh1bh9tf5Cjs9uMQvH5YhRIarS5wZmHd8Okr7ocs3jes2nCMSfdEGiOS6rLBsBn/
	eT7U3nB+7B7Gz2GYNFalRXQEHsglhxClWj0QpnIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f66823987-c5c595e8-174d-476a-ad1a-5521f73a9e9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2d5ca6935af3b01ef972ed45e561986c944cc30a3ea748d68269515fb53cd14
Date: Mon, 7 Mar 2022 22:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646692284
