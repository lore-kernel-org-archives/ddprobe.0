Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B62F4AA8
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646762185;
	h=To:Subject:From:Message-Id:Date;
	bh=2xgnuJ/luhW/TbvuLcOOHPzYf3Cvf6G7R4v1s9yDuf0=;
	b=Crd+4he4iW3pi6YCEP2aPvJnXkX8E7wf441Jt1EbuD4+jcPbdU/Vgkqme3TXNJZ1
	eJKftyMHoLZktlI+ttgajxNCAsaRhHqtx1jx9E1Qfo8VKqnIOwBPmMRC6kt8wAfsWxS
	kjpEFXgWnyu+zodeeVu3m9sjfieHUTzj9PkeE+r0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646762185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2xgnuJ/luhW/TbvuLcOOHPzYf3Cvf6G7R4v1s9yDuf0=;
	b=BxVjeXPfsyUrVnhT4uU/+TPElAw6jYwfUT/pUxJcGivF5dp5C/O8hgtwvHgbULkr
	o9KOka3NtWtty19S3rEgxNYWYQrgfuDTRdhywW3nk0gEe3Jl7Bg4g4bsO/Uiale7jns
	ecapCPJv9TGR2hHbwMsOzQMKz2hN3DlD6sZbB2XM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6aacd02f-f07f6b4a-ac80-42bb-a56d-cedf6606b235-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4c3bbf9778f0580420c4789f3d1ab0f78310f5a5e20086b35c2606e63022369
Date: Tue, 8 Mar 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646762184
