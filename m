Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DA864E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 08:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655714639;
	h=To:Subject:From:Message-Id:Date;
	bh=DMiW8uxe3w/XvlenBsyjNaNeD5fR3H9tOvpY5ExQRnc=;
	b=iYpVIk2PoTJhoirh4+o0N9vAjVZmij2x2whEjcVUImhk5tmaG5ZKCmR4s3zCTKgk
	SEyFxtpqLPJsgyZjocaATT7E3Y7OHjmdd6DhPEuBCG2WGO8rmBa6Znsn5VQoo8p0bdW
	hvjgF/tghfcPQxzXqkxHQ/oGbB1us3ctBRL1K8V8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655714639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DMiW8uxe3w/XvlenBsyjNaNeD5fR3H9tOvpY5ExQRnc=;
	b=hyShyVHSrXBktCjwdxwtOwNXtlYF0Xgj/mn46uDxLmvogwEV4JikiHJhH8hFJYBH
	Cbhb7HhodskbzNN+ZImorbMxBzXucq+XpA2fjrbxKN8W7T0qjN2Up/ZpWH1SPa5MRzI
	CwoemSYXuKjaabnE5Wfm8jrVtxwuXXrJwXbUqSsE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018180486d7d-e8a872c9-66e6-4751-ad35-a54d118ebc14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a49ffcb368e138b7335e3faed930f0083dc1c219738b22ecdfba99319030ea6
Date: Mon, 20 Jun 2022 08:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655714639
