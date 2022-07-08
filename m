Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F727EB
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 07:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657267012;
	h=To:Subject:From:Message-Id:Date;
	bh=oWTQBvhIhOUtPLoYtv77/OFcJiD9Ylpnj4lHI/aEeVQ=;
	b=C9GG1HOySFYi+roF4kd5N54Yr3aSCV9WIQuA0n6ew1M2AdwNemPjaIbQR+7d7iCf
	jyLKHISJ7gKGc47/td9EjE6FgM4KuVCLX5qyYlQ5iP3i100vWtwzMStpUWGkwPtob3F
	+Tx+lzm5xMmg3GKe6QAjMvIuR6Gs1h+1BUzKu7LU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657267012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oWTQBvhIhOUtPLoYtv77/OFcJiD9Ylpnj4lHI/aEeVQ=;
	b=ZWgVWxbYJE6GyWotNTLA9Iewm7l51SoDlOTsYqXrHCVhDcZjN1PYVmAF/Hl++H4R
	QQLsUmV3SoT1mnIV7ZLZ9RL0u/eCKmKDXPokHnDbliA4TUIR68HBzlHtQUsmhThDtV0
	dcZRCkhCzmpbbE09TlCkAkoVxJdA+CGd+XEneusQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dccfc2b7-91a2245e-8948-4714-a99d-76ce8d6f5c14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16e88aae0e24b16b2e4903c0ca937346b2e3003a6bf5001667be8b8529583c15
Date: Fri, 8 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657267012
