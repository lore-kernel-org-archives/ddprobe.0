Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6107E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 12:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654519199;
	h=To:Subject:From:Message-Id:Date;
	bh=aYKcyyBAPSOZRbZAXA0LLwGkAi2WxJSgJvGSl4Zre1M=;
	b=dwjVPkh5/R5IDvVKtjJ5kzVl0ga6hA+4TjumrfTgqQnghCdrA2mMRkDokgu0Ej5M
	QENHMIOlxNIEpU9JrTVl9EeqLjvjr8OubmXFRMIRHQSM/MieeuFp5pufbynTc3nwK9G
	jPpTmUxUSdAOX2DmhFiFZwgT4GNvKrKspzDb4ygA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654519199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aYKcyyBAPSOZRbZAXA0LLwGkAi2WxJSgJvGSl4Zre1M=;
	b=X0GcJ4mukyVi5A5RTz2QPIK5laWuYKsOWb70wC/R4HQcSAmWoq5mnjt3DHTIUfbq
	3tcpgIZOnt8/4ryhAeqYK3y5fMAdVErL1eYQi4c0xANL7s0jv5cQC8oJegKnO1aVHaf
	+zVFn67ra5RwkfTHyXvfTS+wQMgIUCjpVH2QJiC8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181390775f5-6dbf1bda-5d82-41bc-9625-f44d338adf05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 527308299287484a74aea4954f60610a6616a9029d6d89c176402aa56f0144c8
Date: Mon, 6 Jun 2022 12:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654519199
