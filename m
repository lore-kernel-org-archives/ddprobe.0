Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682BB4A25
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657747612;
	h=To:Subject:From:Message-Id:Date;
	bh=h7zYmYwrrKD8H6Zt4mqX11tH/g3z125UqoN7//b7z2Y=;
	b=lQmRPStq9tJSi63r7ob3tm5g22W2+aGbcmcrZ3lmFk0E8biw2NVUcd7ShNGFB44j
	fq9JgUkPRBuuTkjH6dmD32zaBopj6djtzgu1lP7kjfWo/Lo7ghwFVa7DWksH97yXr7y
	Pe26TuFbY/hoJxW45SOj01KqtggpRcmzLwdi0z2I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657747612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h7zYmYwrrKD8H6Zt4mqX11tH/g3z125UqoN7//b7z2Y=;
	b=ADds26z75RgMFyvamjGePNW02x6MOiELP8erKZ8d6Z38av6BGeKvCAZiy7icpbZd
	UQQD+ebED58VD5nSLoUrmHO5ctQSoK8/+6eLfz2RXqrRWxwHstg3/bvWol+nfj9NHr7
	LLcQ+aCOW+R5XWsoG1ZNg7XnaHu9dwQoNrT6bO/c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f97522de-5e878639-6fc5-439c-8a3b-6f5709075e9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52da34089960a04e9129b249f3e3c265eb5915801cb45af5be6c5d95c58fa99f
Date: Wed, 13 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657747612
