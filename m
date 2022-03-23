Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16C21B72
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648049485;
	h=To:Subject:From:Message-Id:Date;
	bh=zKDggUVwNdtjM6YZExW/80DI6kxEfycSHdRtu4cX68c=;
	b=JtNkmqYX7q9WA7MUvQUCgrMPcdX6wrkdvwtG2CSpoldZhoWB7W/HHSL4Kum0r0dE
	jQeKfiTcbElZ4+UFKefBlvJjWD1OszRW68VzLs0iIaC/AirC6MAxaP9iqH7MrRgB9gL
	b+b06WE4e6qeIQz5ce6msXmkwfom2nO5qghqZN5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648049485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zKDggUVwNdtjM6YZExW/80DI6kxEfycSHdRtu4cX68c=;
	b=bFzoVPMkcvvaF0PUs51CiwqE9X++ig0BEMg9+XOMMfR9SPjrs7mDcLwfNywyRRS3
	jJt3vCpWvJ53E5ZoC0XFeC8BKZhZayAN/6rYJiULHEqgvNNxmjXOoBA6KD0YASL+Uzn
	jtRkLigJARkffzDhND7Jhje5DIHtFRpjH70ViR+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb7677458-707c1385-40ae-4a0f-8d06-27920e26551c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e23664ce9f5f8d97f2bf53868dccad3af7cf2a2c8b9e88bb6e5fe9914ba73a2f
Date: Wed, 23 Mar 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648049484
