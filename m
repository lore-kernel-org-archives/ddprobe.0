Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532C217C0
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 09:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648374418;
	h=To:Subject:From:Message-Id:Date;
	bh=B8VqG6kZfSYSVzb5Jma9tuEX7ymyO5XIsvU8R7BDQjI=;
	b=Mwy6kVY2k1c98S9Y4L6DYXNCG8vzg0FJAxU4NOaJo3sJBpdvv97mP18cWTblzuAm
	XFE79HKPMr9QsSuz7LsdIsEa73/gZE9buFjoSCWLgdajeT1QHavLIuiizj+UPRoTfWR
	loAkt8M2SnhRZoFyT0l2CmH6a38x7pNYJUciWR1I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648374418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B8VqG6kZfSYSVzb5Jma9tuEX7ymyO5XIsvU8R7BDQjI=;
	b=ILTtFMqtybUUsvaZEY4R+vCGFuQQ/hacsyK7fV46LbKNugrvsdj9agb2IT0g0xeq
	uUxxfnAix1I0cM/oKHcDHoMrwZ29PApFzfvyTiTRp+w/kuC2O2/WYh+bc8TgCBFtBBe
	fdhYxS7NcI9FzaJRQ2JVZIYgO0AVJpqz6W9JhqpU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcac58b64-55995650-57df-4c8b-90c6-ddf3a9732020-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9da80da5b7ab38037580e18087546a2c71a353abfcbecd1e62e1596aa41f2de7
Date: Sun, 27 Mar 2022 09:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648374418
