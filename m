Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9CD2F2F
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 00:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645922784;
	h=To:Subject:From:Message-Id:Date;
	bh=yeOq1OtaoTRoiafYQQNPLvqKNUm1uaJgpy3IL6wMwi4=;
	b=ZB1KEFStghkt/KmhFIpsdqs37kR4SL2/hO+I68Aapy95gX3CBCYUD8W8oTjmgI6y
	g2ax/JJ6+wLtJluP9th/sDdE5jf1SiIP3BdDLb+YpEK8yQYLk9pO5IC2ewik/EHV4Ry
	F9hppoX2GIvSufABz/oULKSj2DYQ1w91Qa9KbsSQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645922784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yeOq1OtaoTRoiafYQQNPLvqKNUm1uaJgpy3IL6wMwi4=;
	b=JNmSFdcK7MmWDOyyfWs0pfrus99b9DsNOwR3nayz5AWJB6OZQ8ThZVcNVW12j5hv
	IIDA9T1KEDcffyHP59mYCMTWJOnJusVuXC8S+/b7soh4HP5boQSUDNXFMJh28VYDyfy
	Y2oxvyklN0YkpXWfcliQJ0roouKGtwCn2mrMRMdU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f38a495f5-a449c986-6def-4d2d-a76a-f65834951b4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd307e1373d0ba428a17e6c794917f6ed524955cd0424dc187889c162bfc91bd
Date: Sun, 27 Feb 2022 00:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645922784
