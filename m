Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3A26AAC
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657660012;
	h=To:Subject:From:Message-Id:Date;
	bh=+vgkfZz241Lb+jCD5mNmItdxaS+MBjJEvGWQvmWbaZM=;
	b=JTRcXUiiubp3qzB0uAfVdsRgQcTz4KOSv0DJcH7uIjEVJbuG58jnpVjGWVYE88YP
	TSY5BJCQooYnL5OJiPyqM+ub/zfVL9M+j9EgLky00+thWBRkDBG9pkzYoKK6OdocEN2
	qrr93sDImE4DJ6e3+1eN9Sly1dmrr3qJqDi0Ngao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657660012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+vgkfZz241Lb+jCD5mNmItdxaS+MBjJEvGWQvmWbaZM=;
	b=UcdUpXZUbJzzOl9uWaWJofS6aHJdT5paUAh5YtZXDPpzDB6MiZj21V/K/DvF5y1p
	WiDvkSy0m5FX1qe/yu6u44Ma+/hFm+7mN3VFGniMK/JF36SNvqL8+NlQ7yMnwR68BwA
	uup7yysSc8oP0d64sXd5SFPlbOg34O4gn3lD5zVM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f43c76ff-b8c58e88-0d82-4cca-8474-ef852f875b8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1494e9c195a7e103979dd5f1076fd8e51ba2fa6adabcb236ffd827c7c692477c
Date: Tue, 12 Jul 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657660012
