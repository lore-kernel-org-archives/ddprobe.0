Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A6C3D9A
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 23:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653608579;
	h=To:Subject:From:Message-Id:Date;
	bh=Trna2c41yCCD5upruDgfd33CMneaWL01S04csHuyIFc=;
	b=DiM9Zg9W61aHNvdsPUOHfhXKOxE+VmJHPHRCrGpGuhpi/OhymRPJG3q4yKshJyO7
	cTTZT7ApHtScibCqHiKFtAPRsFyyGlHyydgLMiGCR8YHnswYEkmD8B63BV64v3nDXlV
	BCpp/qkML5dHlCvHjlmfxH8omxxHZnMK+QBcc8Tk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653608579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Trna2c41yCCD5upruDgfd33CMneaWL01S04csHuyIFc=;
	b=B2wWaUkA/SoOPOy83Muc61HUxyxiPnqo34tIFWW//CwcB0iSa2Itarsc0nE+YekM
	/cUTkxQ1DLCN7899Zyqxs9h0B19LtXhmi9aU64IYR+5eY+Wn5AMEvtZ2sNVEonecMPO
	cWZMrwDnF7JRqRKylfk2xrnQubGr/MPX2WJs8AE0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018102c080f3-c139c408-4850-4b06-8363-cd96794a999c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 238034632aa249a9beec276bccf48e5c98265c58a8eb9e0ce6cddba12443751c
Date: Thu, 26 May 2022 23:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653608579
