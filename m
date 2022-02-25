Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF4D10EE
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 02:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645756884;
	h=To:Subject:From:Message-Id:Date;
	bh=5Y2vsX4+RV8oZRxTkRLAcA134xgdw4C/iedZytPXTpw=;
	b=T5QGKmy4gNWyEyawFgwoeRI26FyL1UQqeZYB7WoF3fbApMJwe3B9fcZM2duI+qsB
	v5IhrOEe5XyDV5cVBtOxd5CZxcDjunjMkwChmXc2bX8FJPEk4lF72YI5L1nvmd2aTmn
	fjnFhQNAX5UW1y6/jnQeiOHFyFjTmKyaSF6CwKds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645756884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5Y2vsX4+RV8oZRxTkRLAcA134xgdw4C/iedZytPXTpw=;
	b=XCRQdscL9vxaw6acOVm9mO2VX0DJhX/zydz6TBLdJUldxFcM49r/TcYXObdWEwfF
	yHEoH5S6BnqMCIQA+hCjyI0gVYlBBiwi+EPBnDiYm4hsvPAn08nl6UhEocyTQZ0O9SG
	JBJC/smI47GcdEbDVViIWayb1qkLcPcUi++K46yk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2ec12704-415f7adb-1bc1-4219-9b78-ff4d63f5fed3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f54ed1ca2112455b470db312f6d9eeec1dd3d4e700757c76d13f984d13e3e52
Date: Fri, 25 Feb 2022 02:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645756884
