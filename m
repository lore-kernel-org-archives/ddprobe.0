Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215C57C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 09:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657100212;
	h=To:Subject:From:Message-Id:Date;
	bh=TECI/rkBqjfzHA9R7HD1C6wdA+YqXdCBdmRcJHSGJcs=;
	b=Y6Rt+VmfkQhrVBm91r8TFre7njortssN8Q/rHfOIOY9EP7uUlqCWeC3ChZkPYMov
	wT1I5IfzgvPHC/386T2detH9B2hhtwgZIJaTw0BDw/UYdLy/10+SJhhIBzlk7bGSyUT
	o70H/saw+uDyqWsSVlwUvb9aJkCflRuB//1E09/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657100212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TECI/rkBqjfzHA9R7HD1C6wdA+YqXdCBdmRcJHSGJcs=;
	b=VWx0cQ3QorBnxSW3TAKQoLgLgw8ICgo0iI6O47Bf3yru3a0LPApE/QOSiDU++j4M
	dj1EnaSq4NnDEa+oQrT1CK44DRaKLMSF1qCuLKzs/UP/DSLzhkkLRRuiqI4UypYFzPJ
	5WZV+walkAQ0FdOVkdB1ryTCmQtyw3VXb5DSxjS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d2de980a-fd5b4c2c-b173-47a0-9236-8220f0bd1219-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5b7bd8bd11ea76c99e896c6ec9db060de8430245392348c92f0ed4f638d88a0
Date: Wed, 6 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657100212
