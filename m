Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9D0539C
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 12:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645274784;
	h=To:Subject:From:Message-Id:Date;
	bh=q2rFmQoic6sicPKXa3MezERWv8Xba3UixhzgZVRyB7U=;
	b=kKNRa7PijL8E9ceTNJNcVzuizg21U/2IH/M3MnF/l0szQCUCHvnIuJCwcraZyHI8
	J4Kj2kIW9ZRV62SNQNaRahs6+XT3H7LfsrQBR8CwU5SyUe4zHwmjJLX/tgRtOAmnieG
	dIeWYimNj3orhds/LDld6ZXIT1e1mfvSRcWsKWF8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645274784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q2rFmQoic6sicPKXa3MezERWv8Xba3UixhzgZVRyB7U=;
	b=ho99dbFVAeSvXSKEU+Yg+m/dDZPefXiz48pH89+7C6KtkOV+wOc62iI1Oh2nsFjg
	PAlsUo4PT1T67F//Upa2W7ebf1CCgdUId6xEQ8lmABP5e23R6tpWmP03AKTIvSGdumx
	D7msAkxLSNfb8U1xV5kJzM0XvKVDBiDijwow/zUU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1204e42c-9ee4e61f-7cb5-4f2a-b85f-6f68974dfac1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9df948f90aa5534cd37a74987ebc0e43c1ed2674a47c6e97126da1bf4a814356
Date: Sat, 19 Feb 2022 12:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645274784
