Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05FA57D0
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647876085;
	h=To:Subject:From:Message-Id:Date;
	bh=geBbpXIP4wh84LdCzurb3/kO77pi24Zwgvsvrv90rqU=;
	b=jYQUZbcb7dTr9rtiNfxYqPxODldk3cHD3ecTdYtcOgxca7HciCf90h2HPVm7KEft
	yxaIy8/UVujAShXbUOMijLztypiXDjoueZolIuOR7Cund1VT51lHnBTW6mWu3hDQKvp
	cldRYAwR1MalBs/lvqXzIpuHObWDg48c+5cUkcFo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647876085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=geBbpXIP4wh84LdCzurb3/kO77pi24Zwgvsvrv90rqU=;
	b=LSjv4tV930+xlZUVbQkt5mrh1+tIzRtKr6Ul+fg0zstVrppW+GbstEn9cdkldnq9
	p0gsD2p64YVU/N4yoXnwO/QJsqRYRL76tRbHvjcG1fF2epZeXNLGe9osgNale9Wu/Op
	+h5n/+EViQpoj7b7fxFU4axK21jEanrm3yRh4f64=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad1193ff-c181d44c-302f-4fc4-94e0-4b422321b136-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a26284d86b2af829c34e5f8815c98360781692e2f562659c1855593024b116a
Date: Mon, 21 Mar 2022 15:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647876084
