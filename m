Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A28E7EC
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660385452;
	h=To:Subject:From:Message-Id:Date;
	bh=umtCWGZFFdsC/0DiPXzUoCei44rqBnHZAZod6k99NkY=;
	b=TPlRJOazGxdWl3IZqyIimkoRDKE/vhYbTSyDFwRDaGnte41Eah3y26m7Sau9nDau
	C0Ha/DHcsmw2v8MmsK46B1rzvPadFbz+uLNhDPbKP3KzIujUzuj3ev2iHgAvuY6KlYJ
	OLPTtpDWzRqdEmMu61s94rulnOc+nEyGtZieO1sc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660385452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=umtCWGZFFdsC/0DiPXzUoCei44rqBnHZAZod6k99NkY=;
	b=OVwFLujE+fvj7hc4KFKV5+KGMxwP5X0+8lrLDdt2dxJi0fsXbe+OAzYWwrzTWmSa
	bJVfR0zovFxnLYcZYbeUxSW2x54rAAm1pDsTxO9bOaLxZo5xpuFSs8090eR5jS95Fcn
	DMWn9rGUNiHBaQHdvTpaic96psNynhLHzyRbEU+w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018296af61f6-ad2f9d7a-e8e5-4679-ba66-5e7a860d252e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 919bb434c7bf63f842b06dda042823035aa722baab73c5175eb551068229d66a
Date: Sat, 13 Aug 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660385452
