Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63730811
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 14:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654959059;
	h=To:Subject:From:Message-Id:Date;
	bh=QZyrgnzGQwT3aY6LIe2S55jabkb/haBupRdzCvp8ThY=;
	b=i9/2G4iC2+NQqheXZ4FwDtmfAsdMMgWn1ovcO+HpZq0vBO0VjVNOylbqN1KpEA+q
	4FgL+llfVyTuR5jCFV3NHV286rSro5n3R5tbUEenPuIirxrz2gwZ/ThdH/kjy/uNz5A
	DAIITtHgWIUDB2oM0MUBWm4SFAG28xs9AJIGfPAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654959059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QZyrgnzGQwT3aY6LIe2S55jabkb/haBupRdzCvp8ThY=;
	b=jGIe6sgqaIYeXOvHPTzlN0kj0RVuS1tmncl769lnQ+bhRKw+i8EiFCmjQ6ZxdrVK
	588L3t/ZNgVFn8g2vIdFmW1uaWD7QrXCBm+EZPWSvIgbhjcx5oYnAq2dleAbR1oeZsU
	UEdXRAbWgJXZrO2ztcxINeTCZpF0bw+UDG9tDjtA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181533f3109-bec00002-5b2d-4ab1-8e63-30537bad1ca6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73f422a4b005cb70dc91ac9dc041339800f8199a22e80b190bf92356f843cb43
Date: Sat, 11 Jun 2022 14:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654959059
