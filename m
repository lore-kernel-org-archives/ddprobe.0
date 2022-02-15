Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89A4F1B8D
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644968784;
	h=To:Subject:From:Message-Id:Date;
	bh=z/pc7UroYQIAUHf/hR1yywfQiDOwgYV1kMm0k9IT+5c=;
	b=Zog1chDxrHhPHUImRGUIbc+VLc84UdjFtZdxsQvVWHoWiyKerQmABwzCvsDADiNu
	Uz9Ig29WHNKiauEuG88uqhu1T91F2WGKitwqqbJseIFXYFB/O3Hap1WF10OgKETXeih
	gE7BU4EwTK/lLM/CAEeWTtuG5yKJeB7UgU6Y9T9o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644968784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z/pc7UroYQIAUHf/hR1yywfQiDOwgYV1kMm0k9IT+5c=;
	b=HTiGxRrUOUnbbPMZN6dD/J6qxcN9w1ociMPOsKUHBI13iAwLQ0wDbc4J5dBKZBxC
	ICx+2jfYUgjP91TvrA3Bt4M/j7XHmyqVhEL3cTtMuAqwzMyqUIWJ5doHjMvLsSqstqt
	GsPzT0Tdp4dE7gIXphMU6BePACZKMltugqXPFLXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017effc7b398-24784c1a-c73d-4d41-8aa4-be417e0fa393-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ea1185b6c996be435770a10ee829207d524ac3f68d25183e4deb13376d62f58
Date: Tue, 15 Feb 2022 23:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644968784
