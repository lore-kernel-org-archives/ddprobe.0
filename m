Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB4E290F
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 17:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650649978;
	h=To:Subject:From:Message-Id:Date;
	bh=9oW7pwo/Xc6Tcjx+3DbyZ6I91UhpFYvSMGTyoQk514g=;
	b=gj4CDO7qBCYDFvQ6atSsAHhS7KMjifzTpBPyabglp+csWuWFNil87IIRIpxywPKv
	x62T0mugkR86q1SHHWezO771Xvlb9wSkfIE21T7JhNfnPaN96E7p7PeDP7aZXwl4cFG
	KkB8PtI8KC+CvhSW6RtBjUFbblCZOiwLJ/n8vMFA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650649978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9oW7pwo/Xc6Tcjx+3DbyZ6I91UhpFYvSMGTyoQk514g=;
	b=kdkklxl21eOBCokuLfh8Y2jLyQXcXXe3xa+1/1TXwxZWuSXTZ/y72TeEoGpmuM5n
	b55ksCbhkw12VCIalrNoL4e+XLFHo44wRjNU7cG4G+wQTvHQreESnn/lR1mdlIeg+o5
	y6H0hlGY8UlcMHJCSwij6fDSSIBNw8fHWS8rIm/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805267d5d1-48f24a50-3b4f-4be1-8c68-d05e90fadd62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c36befffce6f5ce93f6b853bb4cb2f2c2687a10db2eaff80a710f9d284da6aa4
Date: Fri, 22 Apr 2022 17:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650649978
