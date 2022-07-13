Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C94D17C3
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 06:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657693612;
	h=To:Subject:From:Message-Id:Date;
	bh=B3/jfoDdKnMf0vDqdmdH5sMdB+cza2HEeRwwZxQi3+k=;
	b=Nyw3k/EN4iRoj1ez9IZopCVwejXqsQ1zuP85CuiaN/WWStggf9p6N+OjEw/f4Ds9
	fdyDGS8c7zVRYVCxniV0sKjLpBJNNOol5TsQDOmr3ctIhmfc4q+hH3gAlY8rgeIdLXN
	mmS2OXOMt7Y5Loi/95SUjl60n546d3WW/tdkwEJw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657693612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B3/jfoDdKnMf0vDqdmdH5sMdB+cza2HEeRwwZxQi3+k=;
	b=AUrQhMrvAbBd6NRsA6toDxEr9SDFaGLJOAH86/7YfiOjPtDSwq2ql8MaGUA7yQ5k
	T/M1FIrMdrgMiQGQyB5XYgHhuGnJgX82vqDfGOc9s9xPRlcuC0dI3qCVL8V2RV6VSfX
	AiUXB7RsLJvxdhFErOmXyjiuDsMP0a8OgJnpVIZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f63d2935-d18ffc86-3a08-4014-9597-a82e7d3ec45f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe719960cf9a2312a8693c753aa7e95f70a08dee70ed8f8d3799f6cf7d7119a1
Date: Wed, 13 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657693612
