Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E5728E0
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645864285;
	h=To:Subject:From:Message-Id:Date;
	bh=yn2S2ulOAeTHOQH22fXm3IL/vp5JHsaFhrcBdNOn7qs=;
	b=YWF8VNefAyToRr5/AHdtpBc5tr5qHgQ3qrlebR+x8A7H5du1RLg/MvGFk2TKW+fH
	9wnONDl16dKEvtqiyyiUek9t4uuiX4Ng+tnJ28+4T+CQnCP1ti1kqDYs5G3FEbHl5JX
	FVcJmj05ksIy020DciUHDr4rmoWC2J0uCPh8RPtw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645864285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yn2S2ulOAeTHOQH22fXm3IL/vp5JHsaFhrcBdNOn7qs=;
	b=N5+zqQHDR9eGm6tpiF6/IgfnsiU/Unow/2HdYKq0FAND1u91gte1uvkHNJgPUO6h
	MokFWn9rf5hEbq69vCwDADjx2Rwj7YnIoYcxtTMC8tzGIGq0D+Semgpen889NX5UXYB
	0UcHU+KCSQ8Ur8rgeT3BIJPEeeDj4vnCkEI6RPD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3527f25a-7e2c17ad-f1f6-47bd-90e7-f089db7b9951-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02e3f2bddd4ccf2a9cba84b00fb08e33783d554aa09c39b6bf13e0baf3c8e93b
Date: Sat, 26 Feb 2022 08:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645864284
