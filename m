Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BEE65C88
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 21:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658527012;
	h=To:Subject:From:Message-Id:Date;
	bh=XZTAj12XK8n+U4/+0WEV5AeIzH7yZIxz1B7rBrYk7Cs=;
	b=Nw+nxxaOwh3egEkJSf6Z9sCBjxBOo8hRkLZPSJ9GNRbPkzknWVZh/8nXyoI0FgJa
	5FaDIE864WuYXfFFByHguSSaQzM6YjUW9CkHYI51lFCfreFH697Qwj/v7ohX7kMyA1H
	jsYUSnjgGpBs6TU9knjNySc+h+upsTLATiLUg8+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658527012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XZTAj12XK8n+U4/+0WEV5AeIzH7yZIxz1B7rBrYk7Cs=;
	b=cuRU2PPcZ5L2bVcZmD3rTddmkRcivTskvHLyYXszJl0HvLWVI4MhaOaAhbKnTorb
	CaZpP+j2oI1DhlkqIaBmM6nMf8JLAkQsNeSa3gzaxo9V/bjPvHaarflxYf86ik6CIwh
	NRlJ29O0dZ9bC6JBpQQrUJfgpjuQkF/Cutw+AHko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018227e9d5b5-2b39fc0f-f300-4f82-b1f0-c1f9121ce614-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a6458a9a86f4e690c7851b8c5d5904bfa3787ebfe9c2898adfe85c6dfdb5169
Date: Fri, 22 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658527012
