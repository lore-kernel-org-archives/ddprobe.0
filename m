Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DC47C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 08:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650702479;
	h=To:Subject:From:Message-Id:Date;
	bh=MLs+gNb5icghkZSGMVm5bcKwo1+0PbCDBgH9zbF6+wk=;
	b=SUUao8STN4L+AQhdMt4+tTXg78qz6CzPMnRhYgZlnOPAnoRXpW67ocgJ5tENV5cl
	3Cl+qYKlOrN0ny9NuZrzqd/iCY2kFUcslnwzSgyTM/9nh6SroS+m9YZxrfLawU5RzVj
	KshD2zfAfSfkXZATZcqF93Q4zr+E5gsUZC6xHMP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650702479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MLs+gNb5icghkZSGMVm5bcKwo1+0PbCDBgH9zbF6+wk=;
	b=byyZbua+P1Y5bjbvmub92TB5pb/2yOvbsKSy1rndSAU2+wCpCIjw8ai0yikXXfmA
	okEhm61MJ7y+wZoShVL41s/qb42BFYC0b/pqhIXMOTU5/HjfETg+gkHD2Z2FJ3F4H27
	5B68wvwnUXF+xgLrsQtp0XeHWFlHRhI3z+PAaoSc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805588eb96-49f8d23c-a4cc-4266-b976-e251471e4a3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 847166ef3b9ea7ba15ec466e35bd7ac6f75cfcfb1ddfe21ac8c79c72fffaec4e
Date: Sat, 23 Apr 2022 08:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650702478
