Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9F529A0
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 15:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650728098;
	h=To:Subject:From:Message-Id:Date;
	bh=By5zesXyz88bA7c0J1C0miZs2gF0ThO2Tii9TGFtWd0=;
	b=bHs2yhszW1n1h30YLrudvh5ttIwzp/krhzfhdJYPIG6GoxlCC8wODScZF6D4u1Tb
	XRM+TFR1+BQyx25yDnCp1UUVHeejgbF2a0JpZEmCWxoL9JVkh73asMUCCvptjl1YRQc
	/5bAI8w9gGUMpQ0tbM/CJptPLGnau1fI9DNNRaB0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650728098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=By5zesXyz88bA7c0J1C0miZs2gF0ThO2Tii9TGFtWd0=;
	b=YbnsWpE64Da5KjyaXcpNJxJbCYLomjiTjWD+pF8FjP4WOgeB5ZyCN4yht69vJNIb
	VpZHZ39bGZLWjIjOE1wcakLZaYNSR4i9mBYbuLqkhfshdTUqnoVYfdnvk66lIY1EuJu
	5/WpGeTVpkEEYEdBjwTbnxZeAqWCLv/tMDV00ZM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180570fd9c1-5e358dc1-5d5d-4ff4-ad67-1f47690e6b86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 596587f72c2f6b7dda736ec3c142d7f8930afbe8e2f3a5c037c13a34c69ca2c9
Date: Sat, 23 Apr 2022 15:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650728098
