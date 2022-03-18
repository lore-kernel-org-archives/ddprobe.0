Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAB13D7B
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647587484;
	h=To:Subject:From:Message-Id:Date;
	bh=8Vtzdbw+YbklHI5eudSqRBAhqwpOQSUVttmatnc5oms=;
	b=S6A6/QQ42MuuYX0UTGbbj87qn7TCj1aqwdMwNZ2BBJ1gxlG2JWmbMevhX+OaLKye
	diPR6jcx/ZLcf+bu666ZJ2rZGe6TXCEDObIDiByNtHIoo08PcX3ltkPMBpWp14Abdgt
	hJMleumyy4JZ1LPmL8L6h9y9fDzpQdMoc/sDF0oM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647587484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8Vtzdbw+YbklHI5eudSqRBAhqwpOQSUVttmatnc5oms=;
	b=eZk7+8qVMbre8Pk2irVgJqDSD50hM91QrGSQqAjPbOBYAdU2exjsPwmquKhpuZKn
	rQq9IfhVD+l+N0DXgn8B4vMILl7BhIpUWUCskxeiux/6twe4Y+j61up3C/MT9MuS3dD
	26leYEPRLjlrNXpCBHg1VC1jqav0ZCfubs3j5ISE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9bdde468-51cdbad0-bb43-427e-aaeb-1e825b3edcf0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00eb6b0546038d644884ae7f8a8d8afb9c6c09f6ea23a84fe4e8fc671c8a8942
Date: Fri, 18 Mar 2022 07:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647587484
