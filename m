Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541477E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 05:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654406519;
	h=To:Subject:From:Message-Id:Date;
	bh=oPMdcjPSTVAVmR8kCnqj1zACHrxQBU9X4P1EXyD/Vhc=;
	b=aH+vguMOcmZz1fYQ1yRFdjhzhWJ4PSDoicsR3cnKZ5qvdGz/OZxNUhBHG0MpITbO
	ZwIBkUVOjEmSold3AEq75ImiAkC7TG27AAJpS3Fz5U6a4MjnAJ7cBKlyvvrtUfNh9pH
	fwqnbdFn3x6fZIblWM9fN2dXeqYsPN+NGYeuBfUY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654406519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oPMdcjPSTVAVmR8kCnqj1zACHrxQBU9X4P1EXyD/Vhc=;
	b=eTzIjfZpmX3vBbQSooziVAzOxpCR8RTL8gW5YfWe/V+uc9nx4I5AmOYu5KmjItIg
	1PDOXYeZmroTrdymjdPr8JmajoZnE5CdEyN8UXoqK1XCwRohkx+l4vn1baiLpql6vCj
	uRj271t3ANfLMBoO830sj+EVgGcUHsx4054UXqTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018132501a43-fc02ebb4-3bf3-475f-a583-b25909ad9628-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 657054b0da747a327a5c9fc5ed1cfb1cc247d069994b90dec119168f4dcf6cc6
Date: Sun, 5 Jun 2022 05:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654406519
