Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4299EA2
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659691853;
	h=To:Subject:From:Message-Id:Date;
	bh=Eqo2QX22XmY8LvjXJSAnt6xo2KR1CKrTYUEaQLUkBTA=;
	b=ie+XeowLbEscFYbv7qj6/tfCqyE0YKPyT08nx56VxJGEhY2o4BgAfCa5hWkb17By
	9Y9MiZDIJCg1oUCNtyYb4yYmtBvA6FctfHLaMgPbKTHEcduU61to0MwoOT/Ta3XzV6J
	iofuIzvL1VRUaOo6nZQoPklY/VhDROWM4aWBVPx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659691853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Eqo2QX22XmY8LvjXJSAnt6xo2KR1CKrTYUEaQLUkBTA=;
	b=kBqy6fA+m6mF/IEkPb5Z52e7h5FsXIn22dq5/NusdxB/NIgvx2KiDB4rqebVET54
	Yk8Ksd1sm8C/Z6lmw9InPvPJpi/u6220gzhcUzuUKy6p1joteIZGRYlKoid77KXopUS
	VTAjyEcIvthTJkLhYtVlQ/VQeSCK7XVIlA6SaRGA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826d57e2f0-38055e13-5573-49f1-a16b-820f93c8e8c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a04f2f54d4b56195be3548ffb65f852bd95b3a1b0e562601c7d432e9d710b4c6
Date: Fri, 5 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659691852
