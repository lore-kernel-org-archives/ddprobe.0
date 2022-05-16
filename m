Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B3F136B
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 17:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652723639;
	h=To:Subject:From:Message-Id:Date;
	bh=eujZYtQvb5ZFgcrfKVN+1iO7lVgUhD6NGqZrouzSvOQ=;
	b=S8SQeQDXDT/Rb1xBg6cMcR071SyVvJBeXFdfrKh4+gY2VIaWULDpfOjape7Frw8B
	8t7NPYqqID0gdjo8PadiUa9bc46d6FqFgTRv1SwVA98u0NhbcChx79ClbEzQXmDxxuE
	zQ3G4myY3D3gJOJnMiUb5PY7bYA/Kg/rLYpGY7q8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652723639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eujZYtQvb5ZFgcrfKVN+1iO7lVgUhD6NGqZrouzSvOQ=;
	b=PexPjk9XQwSnG0qCtJhWJoC7dxAYX/9HtqKkAmYweGjvEzrZmSBjCUAedHXIq8lW
	wqmmEljquEqETMjvgrlKM9o31g3uYZaFBMzSIbpgHMbBPnaxvAHuirY6Te2A/xm8DE8
	A+nkXvbmkWHRkto1pbJkeQrDW0nyS6EhKEIhe+RA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ce0163f3-99955f8d-d094-4385-b785-c44e405ee98b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fa693e275716736c616951afef0d280149f9d592e6b54126554ba54c3223114
Date: Mon, 16 May 2022 17:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652723639
