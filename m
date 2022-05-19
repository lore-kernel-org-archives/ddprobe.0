Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD4C223CB
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 09:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652953201;
	h=To:Subject:From:Message-Id:Date;
	bh=Tzt++RAa1mPybq9zszvnV1Q3UlOQD96BmStnXl9d8PU=;
	b=e6iOTE2VGXdHhoj5aehoBrv4MVxrsPjfRsX34KV6WmyCmxZgltIhqK1ACS7fqG6F
	c7AfaTivrB8FrQeCTMEpv4THwdCXfQ5sYWEyJsq6NYfl9h0PvkMKAGGow+/rzN2oo20
	A/4cSzXZj0edKEbqnLnUVbprPjdTl1MKDrfb49mM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652953201;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tzt++RAa1mPybq9zszvnV1Q3UlOQD96BmStnXl9d8PU=;
	b=BwMgLYbkOJDl4tKOiXzXIkW2pbo0tukGlHQ6aTIJ5e4SuptAwTiks6WXLKK9oZfd
	I5wRnvmvH5gTjuyX5eNhIkDDvx1+Gk7Vg1FyXlbQM183Zg/0IpvS+RMejZ0vKb2RLkt
	ey/AyV5kehE5wNhNp8H4hPYNRRMYLTYiAe4CuFig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dbb032f1-b54aeeeb-e998-4458-b5cd-0b9a0a30764f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9df49f268dc8087800314d9958686fbf93a27e0544d3c6dfff80f0bd015e0e12
Date: Thu, 19 May 2022 09:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652953199
