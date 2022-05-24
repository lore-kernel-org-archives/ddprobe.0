Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9AC2569
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 16:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653411479;
	h=To:Subject:From:Message-Id:Date;
	bh=fiHD1aJemvz5pY2HtOQ7Uzq/O7ZaAZedjwUcnyGm89I=;
	b=DU91EDEEnKsNl7QQ2IyTBPEYIrXVwis3wbov1w8B2uSUZLPs7v8SBdqejhd75wT9
	iQ+8PWXZ08vwgWu5Ijs1HeQktI8SPdn2Q5Ysy2WxGXcAy/yos9lzU9rU2mYr/RP0L1n
	27aj1hz9lGAj6Bqunk8nCXLs6zUK+c7iyXppYmrM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653411479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fiHD1aJemvz5pY2HtOQ7Uzq/O7ZaAZedjwUcnyGm89I=;
	b=gI4cDTXRFTEE6PEHdkC7ssW0IuBkAKKQNpR4L+7VTpZtNtTzPgERoqR1+Kujdn0O
	pz1nHkzil+hTjsOTkyJ48B0SbHLdlkLB607W+YnOgNYjpRYbFiV4gb4A7duw9K6GRUF
	xHfZ2d9FiitAjQrEtKEwJfPnmq1LC+R8UIq6+1/4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f700fed8-2ac80fbc-2568-4cf5-82b6-ea076e87767c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f57e13bdae8317e6e0f7feebcefe650d562d9877b56c9582661a4139460f0385
Date: Tue, 24 May 2022 16:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653411479
