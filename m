Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF5BD2102
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647020485;
	h=To:Subject:From:Message-Id:Date;
	bh=xAVZrcMqGs71H91dj3hzJ/fSUww3ekobxFiJkjFOabI=;
	b=Oz3/n8VV+dy/q5NL9E/P30jeP4E/B0PuC1LTto/wS1DYh0hOD7bkt2ba2U1kMs2i
	MxhqR7N5CNcdlaPGpjiHVNtFH0yHQksPt48q7Sd6VbvCPs8cs7j5uAaM6aWdXiTppbq
	L5JNDEeVDmEdzUzuPvSNkCmypNtyK02lGaGjKEdU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647020485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xAVZrcMqGs71H91dj3hzJ/fSUww3ekobxFiJkjFOabI=;
	b=VHbyf01mwgsUb7I4tCsQBKWxGxCQDwYhN0/SEyOEqk2LlBo77U/bVZuWa9LAOBeg
	BvMHFzkVK1yN3g/gTpu/xpNTSYotepeGKV74ZKM0+UA1U9d4YMQWAmnfwDSMZ6Z/Gea
	pnJ0wuy8lXrsHBgsCRfYajJYtpBG3AMgTgwvCcQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a1228dc-65d7d956-9e43-4e85-a147-2095d805ef8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c19fe300a24e961032b9d8fe928d951673412a752f70b8929ea1a0546fad2db
Date: Fri, 11 Mar 2022 17:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647020484
