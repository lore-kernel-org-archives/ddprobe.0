Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA7D7B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 07:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648796938;
	h=To:Subject:From:Message-Id:Date;
	bh=p2hEReHwVE7/5oNlGkabXfybYgYwRgULUXrbjH+160w=;
	b=h5BG4sIuRZ+YUICdNQIhSsSJK1hdjn9DTgA4xuaNU9qM9p02WNJvsRO9klsgNkL3
	1i9CqEODxmopjssABFZGhhHF+IEVQ9ChmGFMmlpVDHVd4W15xilvjuIpl0bSecdPc9D
	C1nMgUJpAkbOXO4XlIoRkLMgmnjTZaKleMvo1LtA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648796938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p2hEReHwVE7/5oNlGkabXfybYgYwRgULUXrbjH+160w=;
	b=F3YA3sWGtphstJabzQBg4rhwLWDm4HYlkv7aSYzzrZK55gLYKam5Z/+gN0NZd/zC
	yPwG7eMStGyWFFafOzj30fafqA9T3D/9BX8zScqOlu8KLT5jkVT5n2j0SmDpfEhkWOH
	H8i6pLysA94PDUvkNwfXY41cZcyxhurQkuYlFldU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe3f4b02d-a8fc11cf-4481-4a56-8f2d-691a9acf398e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38f7e7127cff7c38b75592c2d7bcd9dc8b96824d21edbd8d922ff81ba3a44013
Date: Fri, 1 Apr 2022 07:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648796938
