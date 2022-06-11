Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0075B7F1
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 20:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654980779;
	h=To:Subject:From:Message-Id:Date;
	bh=uAozTqxHADa3v/fYozuv3Iwh4oiNvOzuvwUR25Duw1M=;
	b=FqnRw3ddODcmBT4qmJlPx5lFnWhKvxyBkvUkDAageBNaqAD31178pZEmJ+zwh7Dt
	8cQ43R4vFyy+p+imGLUvttCSbg/Pn6Na5GgZMMK4haSFfmByMg232/Io1hFCo+tZSoV
	+d6FRIgeRcJz2n4QsZEHxEIQidvZP5tsa/6/y2VQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654980779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uAozTqxHADa3v/fYozuv3Iwh4oiNvOzuvwUR25Duw1M=;
	b=WKLTuNNPb6CspXSdAvFhip5wCvJkUb3E02X/QYIyjrlsH2izQfViExyZmUSfJmGZ
	LBu7AmFLaBYZhiZfFb63SXZFWifMKJCT5BESoUtLfWnZi9cetTRSig6MeiBh6n5E27h
	k1y4jo68AGc8YETTtxm1fNaVzvWTFvoFeu5vtJMk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181548a9d16-dffae2d3-9b4b-4c37-a744-7547bbcd5b6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e74bac8a21398241d8b1d3325efb88512687d09a464e18690bfcc3fa2716138c
Date: Sat, 11 Jun 2022 20:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654980779
