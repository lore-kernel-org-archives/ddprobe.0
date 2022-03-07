Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E19617E
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646670685;
	h=To:Subject:From:Message-Id:Date;
	bh=VNUZY8InM28papDzeFX0U+k/JzJn6VmVtMUUm8SDldw=;
	b=ImElID48nMHRdf4+ctt3641sHkav3ai6r3noLHgyT2Je7IuuHcu4nWPcXGhNYKo3
	qZ9YOAEsUj8eZspet7Q+IQSmkqbtxVbGHsIU4xPBGXxDGVSlUDjBfWw1bGHIwHN2b47
	6GlJ3LtSoaHm6ruk4KuQiwxbvZmeJLdV/KsHZtcQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646670685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VNUZY8InM28papDzeFX0U+k/JzJn6VmVtMUUm8SDldw=;
	b=kNqZ9peiTy+tSdgo5YWYcUqBNtR4fWeM1TIrUXNwOkONwMlK+FZtP/n/GDetGPvv
	zdMn0QPg4uxYpw4ech41mZ89ZICSjamhVtCNCCfVZadQM4qN205N+CAIH24PhEkp3yj
	t2ekYm3O14iJgp3QeHHjGX4lLImRkjl9pFs28bG0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6538a2ce-26c2f1a3-4de0-444f-84b5-666381375c6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7de760543bb4bae19f0bee468f34d509ded7b2bd90ee60480abf68c51d6cbd1
Date: Mon, 7 Mar 2022 16:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646670684
