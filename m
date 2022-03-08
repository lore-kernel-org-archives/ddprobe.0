Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B522F31
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 04:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646714784;
	h=To:Subject:From:Message-Id:Date;
	bh=s+CJWlVW9Wg0lAXphn+CYwF28bXCRSWS5eUvy6FwvmM=;
	b=dYnQX4OeRwUgUXr9zQgJqx9N/6IgNzNA8VnXpX2ERwfONsUOqa/v4nVWvpIkmBiG
	/QZXVYLZ7x/iXGeuO/tzvQ10B9/7B6Jcp0pa3SZp+hIYqWnjzcV/ScJ+rpPo8kTYw4r
	Ru/EhJ5GSDM2I4Bg6JNlCSasD57kjnqrs8OwW8Bw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646714784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s+CJWlVW9Wg0lAXphn+CYwF28bXCRSWS5eUvy6FwvmM=;
	b=i9WD5iWPd6PEzMAJLyY+vddcMYqdVn3LHmHovwQvveHNpmA6nDKmvq1IWoEbuzW1
	gJRIg+b2hVg9NQ1kYBA69x3g8P1fsPn5KfIDJw9ZLzxqy2w/Ed7LACWYc5rgUj48fd1
	yfktPolgAeVUtD6MN0mSfI8icDCXFCyhAzL0O5dk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f67d98bde-ef29d356-2b1f-47fd-97d5-ef149b5a9eae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 991d9ea4bde48594113ddc66ceac9051f64757c8a2c9a01be9d7b29d3f2bff38
Date: Tue, 8 Mar 2022 04:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646714784
