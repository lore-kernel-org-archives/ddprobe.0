Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCB16029
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 22:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657837612;
	h=To:Subject:From:Message-Id:Date;
	bh=f6pC/hhNRtaGcra2vtYMXcAS9wuQUBT/UNkBt/JrHaI=;
	b=YRLh/xkCL1nIkhZAjvwureoSNYQbggOoDNTf0YW10SMGKPC81VT9uC/SiSp6GvjY
	N2D5Ug96CobacN2+3oS6OyuENh//qpkl9C8jhdyrUnmTkxlPBbiC8cM+Ff5tMWIlrgF
	9ipCl6YrIOxImkEf/g9AeiWhmYVbGDUhBJU9x+Rs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657837612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f6pC/hhNRtaGcra2vtYMXcAS9wuQUBT/UNkBt/JrHaI=;
	b=JQtfry/sIsbGrep4GONJv8J+PzDMafVtFrfbWyi0bjFoohURNqtIq/U+iVqI3+O3
	+U5cKwvRruL9/bb1MU4iGEb48Ey/iOhomCS7myHOVYn2SKvIyFx4ffWzHx2jS96PqS7
	4DDKVB+fdeMg5cq/qlGRdSlxPyw4OHbKOL4JAdSo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fed26d09-1af6ffde-9367-44f8-ad81-3a4113177a6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a65dbd201b4857e428aef1b1ab7d7fc3dcc20c236227e878bfb30c3d73d74bf4
Date: Thu, 14 Jul 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657837612
