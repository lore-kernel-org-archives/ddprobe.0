Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100EF3D93
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 22:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652221679;
	h=To:Subject:From:Message-Id:Date;
	bh=a/rH5vvbBX/iq6Dtr3UV79o/VBdjqJEMseZL85T+O9k=;
	b=iHSqt6pS+ujv+HrUXA+Dg+s7vJna4RdfBIqtpxXQC3EhZeV1/T+wfpOrTYnZR+kp
	6826cn/J52CSoSN1hY4LLvVIBaoUffiT6lslO2WPoU6sqDVfrpVv+aQAKGnI+FNXLfs
	OCvs15F5qsM1n+gpSTlLMUSsWPwSim8tzhKfjt3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652221679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a/rH5vvbBX/iq6Dtr3UV79o/VBdjqJEMseZL85T+O9k=;
	b=MkFHNiNNeGjo1buRnmM3Uizs7I9muDXX6UUeBh4qz7MypYBo3ezuIVJO3ne2S2o+
	nWubQsTC2MsP8mwY+ePHSnE8umHW+pLinFHNZVNG7o0UJhhi99gu8ZL5PzdnWafOS3e
	Y7lcM5qg9xRrZaGCJJnZPlL9TbKm66ueV1Jt38Qw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b01616a0-ff71502b-b6cf-4576-846c-05cad471b409-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee8e5ca14afffb88a6ee8c66a9fdd6ee278ec87430842d19fe77433dbac817c2
Date: Tue, 10 May 2022 22:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652221679
