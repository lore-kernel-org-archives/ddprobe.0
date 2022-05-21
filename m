Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18043210
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 19:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653160859;
	h=To:Subject:From:Message-Id:Date;
	bh=VWpNxqVuYyz/36Tf2isEePXNryuxh9H0sntoMh+dH3A=;
	b=EZGXpXRT/QwPXJ4SDPuFhnwqU3L/XMw/3UJRD5UZrdb+3MXjcztUVnOrnv6d297d
	9h9wc0dt0NzKIUWEQcn76iTd05NK8UHl1XSXNfuWmPsUHtjiPvFfpMn6wqk+UVzEhL7
	Jc1BYTvunjU+iLnXwgwQ7RGzVWH/4fyapv9UZkjg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653160859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VWpNxqVuYyz/36Tf2isEePXNryuxh9H0sntoMh+dH3A=;
	b=fQ+if+6VQ4M1ulc379NCM9esYBWOfYmRfUoHwkc/rFiuPK6jQ4z5iM126D3GYyM/
	RNvumV7GlVXBgWrW1vCo8dlX1lI4PUdCHbDMvLAvXRlGfL9sOeluxWfJMeMhqoCvDls
	RdlUHxuxSdOZ7YE1ZO7jNTGm08vpC134+q71oHqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e810d6a5-83a1bb0c-ce29-448f-94c0-8d84eeb432d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51be1dad5163449ddf283c22b5c181941d3e03ad5a221ec17e38c6a0120d097f
Date: Sat, 21 May 2022 19:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653160859
