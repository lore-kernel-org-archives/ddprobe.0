Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA51E160
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647718285;
	h=To:Subject:From:Message-Id:Date;
	bh=TwC7BwRhR8tjPOG8RwUigOhnzFCp50tLkbJrWY7mvGU=;
	b=NVLEtB4kAOFPuXEXOlKBvWQ/Qe66BvmZb3j+s5y16HNHRZFpoaPja9xGBr9Eishn
	VauS5LgqpzpBQ3gSxeGeSoQXLKTaD5rl77XrEomrwKZ02H15+7QYbKj0O/WmrwADy7F
	TV+NpVpGgYsZjqvVTmqASy3MDowMRlHBXYT6m5VU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647718285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TwC7BwRhR8tjPOG8RwUigOhnzFCp50tLkbJrWY7mvGU=;
	b=Nrqd/2qOygdo8A3SCdNHzlsrA1Jqlt2yEesjwSzHE+EIPdjviazKy24aLCIdZEVx
	xww8RPOfPv/l6eP9Owv7XUVm4NyUYVVSZqF+PYMurCIqm5HDU92Hml+TcPMAPvHCAm+
	NSl7DnfeAti122HeoK7j9GS6Bll8CwzffMyxbL8c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3a9bd9b-140b22bd-637e-4031-96e7-d95992e09fe7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbf8c7e523942a85edcf16a8dee0c23da7578e772e845dec6576bff27298f084
Date: Sat, 19 Mar 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647718284
