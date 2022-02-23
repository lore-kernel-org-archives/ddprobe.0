Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0EAF6AA3
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645646785;
	h=To:Subject:From:Message-Id:Date;
	bh=U/obB4x9auS9hHvIYFDk3hrTIQJztOwpTeAUKrXrSm8=;
	b=EUuy6EYPm9Wku9rKAAziWtXJHEmqGwE6BwBKzkUQ8C+CdlPt1Omapy80dKYBg/uM
	Cj9E5BtHGEy/mcZfKUAe2Amh9xjC79hPannxXJrt3xFgX7kdJpr6uw80t6KRTN9bxjv
	aqa2fjgxEO9CHGpTjqkXFfJpDQizx9oyuymWyzgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645646785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U/obB4x9auS9hHvIYFDk3hrTIQJztOwpTeAUKrXrSm8=;
	b=Z1dojKdfdYJB2CtFvxcH1IKbk70n6jL254Eug8+38acHX2y/zdpc3RQzHQGddrTV
	wIyygmsADGUslW3+PWlm4c12LGIa8iwvowO82buNIEIeRj2nr0VmI6mlHgDyyfCvUWI
	WiVmKt7FYr3ZhASguhPXALWpEoVhyYWNZrUaLJXQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28312955-8424470e-50c8-48a7-80b7-abb58ddd5712-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28419493f665e05ee9a4bf1f2f3ca66dac52579481b97f32e59da710157180d0
Date: Wed, 23 Feb 2022 20:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645646784
