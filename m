Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A85622
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660356652;
	h=To:Subject:From:Message-Id:Date;
	bh=eOpk3ZAFVqXzyaLM+UXhYoDADBpiZnrKs4jSiD+EIvo=;
	b=VNeW2Kh09UzrYtJzXCe7VCgiBrCuFTUtRrqxyY7zo/9DPt4puKK3Y1lbB3sAhmLE
	O21KCK3DzPbfhJ4W1eRae22l9TJQDyRoGCUsiOu219y9O5TgLUD6PLRU/6aQWBRbEEH
	mVBJ8/BEfTPtxrYGSIUXbGtA3X74/ftdv/konTg0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660356652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eOpk3ZAFVqXzyaLM+UXhYoDADBpiZnrKs4jSiD+EIvo=;
	b=f+eEpm1tACzAhgeVE4NAr5/+ThfgMZMXq9x3+9Q3YLSdIsPggbm8EOP/+bQIz+95
	dmjTEDJVGmM/G/deKit3XxqN6q/Gc6gzNkVzdRf8KlWAKUg4rOLwhbZ1kZzqjVZ1AGu
	U/bEJXeE1XE8rhWKzdFfouaWVi3kMbNQPkQwrXSA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018294f7ee00-98a65db6-edc3-4762-bc05-580a63241f24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a82e56417e4e9b33cdd674ce69cc970eef463dd80cefcb00973bbd639bb04f5b
Date: Sat, 13 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660356652
