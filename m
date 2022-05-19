Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B22F77E
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 13:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652967000;
	h=To:Subject:From:Message-Id:Date;
	bh=fgIQhw8i119q6nCqYx42YtgoscR32mnWe/9j278dSAE=;
	b=FBhk439TBsFaIikNMcrzD+rvzSRM2i2tmHfcoEpRrrcoQijWeVTY5ndPwtJ7QDVq
	/+sIn9u0xO872z0UT/qy8T14SZCWPl4blsCtUPP8LUZ/bMlsJntleDm0ZkW9vtokXGH
	74ABcOMYMrEnteK4kMXX94KAOrMsO1QC0Ale/bZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652967000;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fgIQhw8i119q6nCqYx42YtgoscR32mnWe/9j278dSAE=;
	b=a4LisD87o59ErlCVWhGuIoVGd9wq4F2yYjfrZGKE1srN2GYAVhEYHyCL+xyPXcO7
	nZTQeIeSu7g2SCtdHYgj1WRHYs521sUqNcJUXzF/dJnpgYVSMAH+DVfEDJx8Chbffpy
	aL3kMFzaT5/dSRrJIy9tmZTBcPplROYnEpcfbAJk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dc82c5de-a8609cec-e44b-4102-8547-2d4a1313bda3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15bd5f1848710818c2f7262a0babd8b5c419d1223909465435dee114c06f45dc
Date: Thu, 19 May 2022 13:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652966999
