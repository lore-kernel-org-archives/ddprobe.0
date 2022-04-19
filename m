Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDDEA1364
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 15:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650381958;
	h=To:Subject:From:Message-Id:Date;
	bh=yvB2n/0AaCsP1VzMMkzovc2iHCrIqVIyijR48zg1tBo=;
	b=Kqd6r1Wli3XyudnIZehkZR1wEQ3eWSPwlAebKZNZ9W0rD+d/YGpSTTKNT3AOtQRY
	whdC62dSSRz5p4vi40RgKq1rOg+ot7JUgkYp6koNgB7sSo+skBLpwF/55vTaFEySHvC
	J2J5IpHgAL3fn2AfigP6bRrHwqFMCPWMaUJX/Bn4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650381958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yvB2n/0AaCsP1VzMMkzovc2iHCrIqVIyijR48zg1tBo=;
	b=PhT+t7brFypLgKB254G9qTND/W5hl5u4kMPZUv8CDJZ5GjFjhFLGcjsWHrAatwfV
	rugIzFxxhrm14W/8nF76oZDJbWMqbAoIUVzbyP7JIp5jz6ZS+9if+WfePIhBTaYL40u
	n4tC9EsBiMBZAL7Y661sksnMegeKDhu9678He6MQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180426e2c69-4d4bf09b-9267-4b89-be5f-524286b7c6c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27003a79cc170d091965bcabbf3cb0274e8ea28bc90a2a5006fa4cd5cd517e3f
Date: Tue, 19 Apr 2022 15:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650381958
