Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 985DB4411
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 15:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657555013;
	h=To:Subject:From:Message-Id:Date;
	bh=FCRYbnNs4KgrJsUym5yT990DPCdsReth5R91Epvn9TE=;
	b=eyzFCXfIuiOq4NeomBjnzLbGW4afzyvm7QKht4wtX72zqbDcfh0/OgY7pRnqBjz3
	7cCseMD/zZc5xZDsnx8IaHZUZBJFYMImdtsMmtw4GXXTOPiB37mVdWr4wTWpiYf9n8U
	fOQ7cH2qHtetukVuRx454U5q/NcphSR++XASqFMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657555013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FCRYbnNs4KgrJsUym5yT990DPCdsReth5R91Epvn9TE=;
	b=Ak9ZwepiSh8/l9XmAdqNdMAwGtOIuee1NAeGZaQCQ7J3jZ2zPu+XKvtRrpAd9eDj
	W162dhKvbafXSBd+QsAn0G165Y1qibmhQ3WgZSqvzj5wk1DjVtG3yIzRvJ0qTg97/Lr
	69pw4SYkYBGZ+S4O4XELupV9rE4ObaIw4a53JZGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181edfa4b1e-b6258bc7-0560-49dd-9e57-2e16b43e13ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2577f3122e1c07aaf42e7e323b54076ad6745aacd31b6aae543b7d4428856cc5
Date: Mon, 11 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657555012
