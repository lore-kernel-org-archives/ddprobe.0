Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D952F320E
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 12:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650024958;
	h=To:Subject:From:Message-Id:Date;
	bh=JXl8u1A4MRm10lL+tdYUNO0dXrY4vs9rTFNU4LLAStk=;
	b=lc+Fkt14DceaHINdDE05rSLzoF2cNS0729WriUxIe0E+MYKCsGRKFsJpuZS231mD
	ZhB0f5SlCgqcddhCOQMkeSj8fTww3MI/T3fu/fnXVp33QAhNygZrPBwVRhqJ846pyqW
	YabIXeGzy89TkrbZd7yoX1HmDbWU10xYQrbmx7SE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650024958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JXl8u1A4MRm10lL+tdYUNO0dXrY4vs9rTFNU4LLAStk=;
	b=H1A9N0+s3iqsz+Y7BFVxYFdKEf1hol75xRUF2wgv3dPiMyhUcPVgh+doxb4QW6Hq
	wm6QHvtjDb3M8D3PBvc9nS0FvhwnRWh+F9F5lbceR/HwEsQlwF23Et/NV+oQjPZLqgZ
	SGGJygIveaI5BhLHleau3cCn3Hm1SgfuNwrfOyAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802d26c919-869ff373-b157-4f31-acf0-b9bf1b690d18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8095350f03bb02f92504c5e8a90083fb70cbf321ca0c5d88c6b90cd7ef24928b
Date: Fri, 15 Apr 2022 12:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650024958
