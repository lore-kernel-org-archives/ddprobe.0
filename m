Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DCE77B
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660608652;
	h=To:Subject:From:Message-Id:Date;
	bh=o4gSZBZzUZz+NikLYvSGNMGXR/e0hRB8TTcl4zFvcjU=;
	b=FAVGC0evBlarThPzaWQ7URsuw0x+UE8I8C54QrxN3tsMhhQ9uG4KxmjXriwyV8DB
	O68Ey3rhCsqa8bEXM8oOlGgjjmKTIPgvEH+XEv+/5XP6rYmLiN8wpoMrIHox5HU4pRX
	IpBVCKxHQaIyWzM0fzy+hf7hycgpg259fjHABsQg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660608652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o4gSZBZzUZz+NikLYvSGNMGXR/e0hRB8TTcl4zFvcjU=;
	b=kymaT+nVGkbfSaXSbvX5/S8XN/dMHXEAkzI/1JuytBvlyDoPO72Yt/bbfvG7ExVQ
	hI3MZSEEPdZC34lgAk2icoG4FZzDr9tJ3FkB9X3Vp0vkLNnw+DfQkWNPSn4vdcs3d5t
	poOB/mHa5TFZICpN12jYti/m1eJcGvO06FOeT+hs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a3fd24fd-6c38a7a6-bba1-4b41-ae60-0a5934c8c57b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d07f84226a63ae5c6fc517f88fa0d9cd16023321e678c40d41ea7ba2c4012aa6
Date: Tue, 16 Aug 2022 00:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660608652
