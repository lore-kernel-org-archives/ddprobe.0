Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65132614F
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647123984;
	h=To:Subject:From:Message-Id:Date;
	bh=xR3x+kTyDumOjYoPZ30qTh9fVI4PDyT+13eEcpT1cF4=;
	b=YSM/AVwZYNjWFbcuXg8pYr/aryYNnaeJjt6BLd5boa5a9MS6c37Z44DZHf4TNQDr
	pqydVR3BUEa08ZQ/8DtgFz6XJjdNXRM/P/AakR+ncC5HWmraR5wpB7B7sYLwx0gJR6r
	lO16TUT39sL+joemycpVUl6qMPijaJxQ39cU07vw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647123984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xR3x+kTyDumOjYoPZ30qTh9fVI4PDyT+13eEcpT1cF4=;
	b=SSHuyq2vArNONsjpsULwymsqGuyTNtJ0p3Revn3BplUO2p8JPnLNcMlo9AGFVoxS
	aOk0ob2m6F08IqW4Wu7cuq7DCiFLFllayvHcuMMSGJsGFBBp9gdiJ4wZiS3cNdJNki2
	AuKgpMeYrOrkNv2FFUQQZGIjurOJIHZra3bZxCyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f803d718b-1504851b-f9f9-4227-bb6f-7bd4c87ab7ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b47a40515e82b2f4ce5d89d69bf2e6a5e2d839b3a2106c5344c1377089f2ddd8
Date: Sat, 12 Mar 2022 22:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647123984
