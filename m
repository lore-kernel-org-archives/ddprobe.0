Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27797638
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657220212;
	h=To:Subject:From:Message-Id:Date;
	bh=Rx3qZgXA7RMC7aMPY+Y3nW6LjMhcCRavvDLFbIRv1nY=;
	b=ld+GkDDkwtIKDLWeYf67DtMaKaXDJv+ZNUBxoxSxtE1uuj8uhaURWSfNyeyFaG5b
	lcBxeuStgDJ57dbDZeMFntl8yqrS6QEm4hs1JWhrZtS4lEUdAKKULhdg/oBjVj37zg/
	zALrdVmN7OdMYtDBTkdoejkeAycuVWMXHR1hPcPw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657220212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rx3qZgXA7RMC7aMPY+Y3nW6LjMhcCRavvDLFbIRv1nY=;
	b=VU4IRJDse/fotdFzWnNy5AO+AoVxaxNspMiFQisC2kjmt+5/45Cx+02JpnZHuTre
	ubvaC7tJLGajI7zd9zyuHCrxb8sZZo886tQf4moIu8nrvOvhvR+O3Sr1FCxJjfzIYM1
	Mb57gYmjIeqe0zKgXOwlLdkeQO/msmLWDo7BFrFg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181da05a637-52b6c157-6527-4478-b13f-64f30f59c34c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9b5a72127cfc47c4808421b30b0ce9fd87265607ee060a85eb6145d8b04bb8d
Date: Thu, 7 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657220212
