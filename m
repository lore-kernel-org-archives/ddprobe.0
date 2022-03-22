Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E367A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 07:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647932485;
	h=To:Subject:From:Message-Id:Date;
	bh=ogzDZ3iCs7FJq3KOmnAThiagAY2xBmYzv7c4HKvW9kY=;
	b=FvmTr7KqyVGPXDi4j8KUG8P+kHu0fiMobRf9nHDMv8Pt8BwxUMZ4DieXQSLwvxRc
	N7/Amjd/Y/FaDsLTVO3U0d4MdMRM0+olYKg9H0FMrmhYpEFZy/yC4xQbF+wQuUixIad
	x2K7cx4W5ejHQADdL4MZSzwvQHQPAoFFEfTPfyYg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647932485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ogzDZ3iCs7FJq3KOmnAThiagAY2xBmYzv7c4HKvW9kY=;
	b=Z3LA2fZLJzFaXslk7zdXQwKpVFN+2YffJrAf0L6gftdSGLpKgt9xM7SNwKQJuMK1
	e6hfvuFMAdRLKmBSrn4IEtxG6omt+TlcoPvFYCjmW9EZSR2Amb6kGAv0VqsbVC1eoyx
	yYUgqkcRS4q6Te92gHfB5ANjVWQxZcT4WUagAPgc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb06e2c75-c1e9818c-c2e8-49f6-8a6a-488c6e5b592e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efb50a8b115cbabe83b4dc932d9596b63731b22a1b6b01d12ddd878577e5720a
Date: Tue, 22 Mar 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647932484
