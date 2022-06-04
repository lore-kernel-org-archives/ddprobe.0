Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41266EA0
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 00:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654301399;
	h=To:Subject:From:Message-Id:Date;
	bh=TIC3B2EK4K+6C2tK9NWlSgZSu7+rK2NZJJJOpQk/++M=;
	b=YQi6SDE4ey1pxBJ3aRh2uq/J2yxT/pvMy67ujzfEa+Z56i9a9v9q3gyM8PfEDlf/
	ZfABV0D60xK4+Gc72nP46OYOg+RgieYiNAYV2+ATYt8metmINdRiLwg1cAIABtVTrzS
	kUDGhGfQpRwBW2AY6VDr8qgSY+f62gTklcB5B9ew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654301399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TIC3B2EK4K+6C2tK9NWlSgZSu7+rK2NZJJJOpQk/++M=;
	b=H45qRpcTJh0ffUqcElj/ahnmodC+P58rNF0qqIPQGbLz0gZNyzYMp8nW7zB2bLg3
	BTv9b/rGxc/KX/dnnuhRWPcdFGfblBcBki17v7QVUu/S8FLqZD93rlWcrUxd/OY+7k1
	98rU21hLlk3nC87bFZz0hAJO7KTCsiLwOsgGQTH4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812c0c18ea-a113cdef-94ae-4ff5-b19b-6fe1691cc240-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b7e21a6380f0eeaaf61d6d892812f76d8daa98c08aaa6fac2503271ec7e7a52
Date: Sat, 4 Jun 2022 00:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654301399
