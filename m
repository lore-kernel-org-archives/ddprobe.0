Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A15772F2F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646770285;
	h=To:Subject:From:Message-Id:Date;
	bh=Oa+IgDff7nOFR2Z7GXCMI5ywyugvX0tBOST3fqID5Ig=;
	b=ER09dlec/SKJnRQfHx1Md6Cm/zQugMa9/oKc7rBhRDtss0Xbn2tSzidqq1GVgZ3P
	ovJxN5sjd5Q1GlGf4hWJGFvhLEbJZLKmrzOGhPHN0oI9yEE7WA/bfSw60xFYWyi2Bj+
	QdfYNIFHAdZOiIjCOL5ATr61ZoBOQaqGH0B7cNtI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646770285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Oa+IgDff7nOFR2Z7GXCMI5ywyugvX0tBOST3fqID5Ig=;
	b=XMQMGb3key6CdMGCOThTkAv7FTUeKyzjDj1wLM1Hv1uCZpH6y7xWnrFEfiBhZ6SR
	abY58u+npgetUPHFC127hX2e4wtriV9q/PkEcszrpuPAycx3cb+hEHF8Q5nMLQns1Jc
	8MXqV1xQ2XcYPwQmLoF34dJeoBFaMkLUkhRiTjEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6b2868c7-62a0c7b5-68a9-4460-8023-7fa28d0f6e42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d60d72e07fbf3019c272405a2f789ef315bddaf89605b802007c77bab7054627
Date: Tue, 8 Mar 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646770284
