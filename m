Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D3B43C9
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 02:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655951699;
	h=To:Subject:From:Message-Id:Date;
	bh=usCO/50yzXKKMiZAjJtmWNt0pPHlHBjuO/QKs5KKh0M=;
	b=OnWaRzWO/LuHvgdTeXZ0t0eeYHsuKDZCpayCt9NZC5Hgnh0emTzQ+X7am3+mxn4b
	RyLq+zD75xffmfI+L1pd8K19Nl2NN7l+QB2E5H4XOEzSCyL7SWS3X+NnLpX4vPAjhW5
	nBeb6aCU+/+Jsd5b+NRC7oX7uVeG7qrBG4FxwvoE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655951699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=usCO/50yzXKKMiZAjJtmWNt0pPHlHBjuO/QKs5KKh0M=;
	b=Zj1vJr/iuKiYbrsm3S4z5BQ5z1RZ1x5RIpvpt4Gq6l2goXrwQqhYo0HeFtWpdPns
	mfjeURJc0PBWmKi6+X6KMdwmzHPN8J1LtGrPUGKzPKjjcyWNM59CKj06/TH+HcvZoY/
	u6m9f+y/57gdWNOKCsjCIKtZIlFl9/JmvOilX9+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818e69ad80-87a75c5e-be2d-46d8-909e-1a3e928acd35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0941b840d74812bb1998d4fc417da16337c026f5416bf9491f8dc342114bc708
Date: Thu, 23 Jun 2022 02:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655951699
