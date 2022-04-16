Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162C22580
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 17:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650131458;
	h=To:Subject:From:Message-Id:Date;
	bh=pu028pho3d8GS9kQTI6lPg8KvaO7XgvaGlvmJATxAI8=;
	b=WncjYdTZUsZKi+igbcE54GWWaD6E9/lmoMPuirMd6KQh9J8/c3sPhciWmnMsdup/
	Fvn2JwexM8ykjTWQjUPWXoJQJyoicWb0TMR55468gptQXHJB5xAneD5NhgwnUqs18I3
	gKO5hIx3z1gAi7frMm4DPM/JfheeJDKBuVJlnwkU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650131458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pu028pho3d8GS9kQTI6lPg8KvaO7XgvaGlvmJATxAI8=;
	b=NnrdcCmyG48YXkhPa/f6wCGYaiCAPdTr0eac1QkoQXvfk06CXoKFTy67HQCGsZWQ
	05D6TJHuoC4VmvpV+eTJQIL3yHxN3QxOVebmHSc5g38Q6n0JnFjnOR+0IF++fXcuD2b
	8dFFbeElmTu5KwhyWpoZn/dETqWbmRahMb34twP8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180337fd8e8-553a14dd-d631-45b9-b985-85441e506834-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb9cf1735e0aa827715a71f75e1d727fb9c0f5219af0f2f6f5b11d171b1031e8
Date: Sat, 16 Apr 2022 17:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650131458
