Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285347B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 07:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651218418;
	h=To:Subject:From:Message-Id:Date;
	bh=q0J5Qgvk6YHbwXssFjXXvIMZ8z0JHveOVgSSfmS631k=;
	b=NzHgfbvMKK6nzsQu7E9OYcMy/ke/NoM1R7uPv3mUHpbIbo45Q2qmTWxDzlhBI1h9
	AWWv6J01qIzctkJaglH9uq5llg+zsf2fzdAB370CoDwg7lGM8Ohm7EyZ6cDzRSmt+0R
	wRHNi4IxTz4oqHDEi0Snk6o/fcdFsGVRECtd34zc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651218418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q0J5Qgvk6YHbwXssFjXXvIMZ8z0JHveOVgSSfmS631k=;
	b=d310SCiIp66PVGBZEs3Qt7yUwzxvKLR5Dv5cNSfUpf3KMVFXASSscYUzi/CJvp5U
	oSGRgwEYj77sVDGq7WRPLkjbXwPIWlfcmykUE2eNXHGBP8Q9+5YoD5jJ/XRsN2kvpQg
	ieB/3EwBNi7C3b6HeVMtQhQL7MPf6FWiE2jjBuSI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018074498a6b-60f53c7a-ac75-487c-9778-0178e8751564-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6363b26d5de12cb7d913acdb01408b4fc9777b2643986a181160d9ab6a8e7c8c
Date: Fri, 29 Apr 2022 07:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651218418
