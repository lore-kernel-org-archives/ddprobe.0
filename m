Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9373257DF
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 23:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645314085;
	h=To:Subject:From:Message-Id:Date;
	bh=XCnJntYWUk0b+0MM9k3yp8jl0QOCgMmEieP0Sxlw8NM=;
	b=JhRsRdNlpNHQ/OpZ0HioaxxD4iXKF/qLot7MaG3W74uzeOCuE1of9kuG19vYt3Oz
	VQ+CJDxKoJQmvAoY1nN4AG4fZe2HW/iT/sgIdCYzecInULbFc4g3mSDiWFbMTfhP+jJ
	L8OawmAtNcYrW44JThGQZ86RWxAE/y5CguYWkAZw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645314085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XCnJntYWUk0b+0MM9k3yp8jl0QOCgMmEieP0Sxlw8NM=;
	b=kW7sVIN8dBvbYLfYLc6aBmRlSUXEPlwOER7c/ARH3g3+0toamFuH9eT8F2e3QPIs
	ya31/U8D0EvhTirLMQioOnEQLCRGrX0VUqLLEGkgNm1lE5ntJaO08U8cnjVDW/9Z7hl
	Ky/zJnU4FRdz3bxXXEyIcLvU65h3NuH/vFCtem10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f145c8fe7-3a5bccd9-680d-48d1-9ef1-228a4456bd67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eaff766ddbc1eb3aa0034cb6c369a1337faf7834bf8119406af3e9dd647c8ed7
Date: Sat, 19 Feb 2022 23:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645314084
