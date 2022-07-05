Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110AE2917
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 19:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657049812;
	h=To:Subject:From:Message-Id:Date;
	bh=3pWn69AnATDIfE4zKXZ/rrN8ru3xWwsRRlx2kvZgCn0=;
	b=GShRTKPb3xIZh1a1zceGHIXr+Rh3OMs1hUN4yoWGbrzazb1vUAaK0u26k9dp9uEr
	GATkdN4ve8goMfWKbE00qWN65IwqYJvH201xQEbhQHXEGaqB1dzqJd70Ap0ZWF/yr0m
	9aU81duvJMXgBuOGyTZ77BTAdmhy/oJr0RX7CzLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657049812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3pWn69AnATDIfE4zKXZ/rrN8ru3xWwsRRlx2kvZgCn0=;
	b=UGlL8cvgb/i/MyeaDwslH8/eBRPQSwRqlI/Mkz4x+zekQJnU5ZUmbSN1Q9Cfe/eU
	0SsqGzooOxyoDXeTWVjPUCfYruq88aDrLrD78vk80Yw+uG/maVNnnhNRFjfo5XHklRH
	uz9/JrAuS8VGBSwEKPSTf8WIp8y3P14JX/gUmI7c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cfdd8d65-0bffd260-d1ad-4fbb-9360-37cfd0cf3f29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cfd9a60c9e85dea073d6dfafc8eec7df4c7ac1389f98826d646630654e5846d
Date: Tue, 5 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657049812
