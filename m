Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 933293D82
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 21:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649798219;
	h=To:Subject:From:Message-Id:Date;
	bh=ElJ+2lmOlKJpWk61V5ADK1rj3UeVhotwzEUwuwrXUbk=;
	b=MiIG1ZiaodN9JUy9sFhkTxWrIa2c4KenUNu4mvC8sDRx4EgXbcX4EjBxG5viIpiY
	po6eAGTiK9dAx88o806YfHdGTdgjzkBrkNlaCkI3YhRrpBJxG+kmqXzkg+njGU3DEmG
	a1l8Kx047m06yFCTw0tyarrnNaO9uVMlx/9c1W6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649798219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ElJ+2lmOlKJpWk61V5ADK1rj3UeVhotwzEUwuwrXUbk=;
	b=N89ACiINDRknQCgaWQcoSn0SA5mGjwTKqgAqi7uFI8XaIPwwVhSUF4N3AxsKTZzl
	Oe+mDr+3AAY4ZNXVR89+5GRW1iwzQ7BEIEpnDYS12IgQaj0f2I5dxMhPyZBPDYjE7p9
	YC2leJRh7eClsV6K8HZoz26rQP199MbQqk3zHXig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801fa3023f-6bd451ff-810d-47a8-814f-870573e2976f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c69241eef87b57c716b43b281e74c1a188d46049da7f699d265a39c8623ba691
Date: Tue, 12 Apr 2022 21:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649798218
