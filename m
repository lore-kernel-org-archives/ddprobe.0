Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8021FD4
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647348684;
	h=To:Subject:From:Message-Id:Date;
	bh=74Fi8kl70HKPUsjpmhg8M2wwf+xeZLROB/XWeyWSduA=;
	b=Ml5WoAQIoibfg9SqQ570vYgioWPljViewQK1b0CbJkVmFS9VrqST5YEOqVbE8gTR
	mZ8XxVTuZJSLILOke+X0/Ke8aJP1wC6pZx+VtBl34enfPRHn/RhNbKUi14r5oUchsxD
	sXZ9jVVDtoqM0Ydp0B2DMW/yfaHc9llnyGWfqftM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647348684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=74Fi8kl70HKPUsjpmhg8M2wwf+xeZLROB/XWeyWSduA=;
	b=fBpjJAqaxA+HG6u/VWbXJ626pGWapb/5QUUnIPOxChhTiNshA6xvUfJCTtMtpWyy
	zFnhkZ6TyoBK9E0xWG/SP+CytG2aX/PudKEbOQ2y4maSuzqhGfVGyHa+gbGX+mx1Pez
	LT0Ga13p9WLAMDGu5TXXudYeF1l7v0X2XlebX8q0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8da217b9-d37d69ff-e29e-4efa-bf3b-25059bd6618d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a7c2b09931a84a13d413960cec863c6536781d3d6c865b5ce3db657b521092f
Date: Tue, 15 Mar 2022 12:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647348684
