Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0107C
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 11:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648812358;
	h=To:Subject:From:Message-Id:Date;
	bh=NFXR71xsMja2OSnSE5MBZ6jJaoq759SJRDlxKt2Fniw=;
	b=HhFDgHJFqWGAA0wCVfjV9OhXKVT8N9oo6lB1hMvHfc8p3SjfzkAnZiDlat8CMSAV
	zCHALYa1zXdmOG759jija6+hwZ98NEVFnmDdr7F3LVkbUSWTZSsmpJZgh20pPBGZSL6
	J+77VgDbdiLRopSMOtchoFOh1XIf/vJ4CtW6vWxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648812358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NFXR71xsMja2OSnSE5MBZ6jJaoq759SJRDlxKt2Fniw=;
	b=AjvoOoXW81EYNDi4IbOZcw4cH6vRN+t3xMsCOmif4X1XlY75DOcI6L0zbch+vnZx
	5g9DkUasqdghRa3lqEui77pZD6FuMZAb1Tz/oi2/ER9Cque2jMImIoEcnkcg3O08t9I
	9Io1Y1UrYRXxGug88Xh9vGk/imCCJvLj2IJM4wSk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe4dffa6a-c1b144fd-3f63-40a0-8e31-71fb18630205-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6150862057f4ee8b25ffa6babba87ff01ac268f83a6475d5aa11d5b506deabea
Date: Fri, 1 Apr 2022 11:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648812358
