Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207F31866
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 18:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650480358;
	h=To:Subject:From:Message-Id:Date;
	bh=wbUYmZVOnpgwDoMWCJHr34zorR7nQM++vIk1xD/z8ck=;
	b=ba5dL3oPuoCukh33lYoveNwGwXf/K7n12R65QLOUyyeNLe9lG7miN+Rx0UUOGxzL
	S1OIMupguX8U+m/CR5+nSC0sm9WQysWfJ0kqEGI1Ocb3pF0mgcEv9OqETAJmtNoUIR0
	gVnVrEdPw68kqSlNzFzI2FXzrmtvWKHO4bQIs+QM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650480358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wbUYmZVOnpgwDoMWCJHr34zorR7nQM++vIk1xD/z8ck=;
	b=RxE6Xzlw3N5V/vPYmc4eH4b2HvzARlE5fSawnm8o/vP8dpWzZjt5+ag1YrwkafCs
	qIBjp5Q1KnCVHjILCaNYhuJ4najDwlZQ6R+2PCZ9y4asRuVm+s4eFgj5jPqdboVSfQ4
	e/N4/UPBEModyXW5uOtvhmu4gvZBwxiRrSqodB78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180484ba3a8-68dbd114-1e4d-43d0-816b-d30e3f1c9321-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb09cae0ade28d8eba4272a4c889a3016ff9b575f7fa880809f7371777818cbc
Date: Wed, 20 Apr 2022 18:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650480358
