Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F744A3E
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 13:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657115812;
	h=To:Subject:From:Message-Id:Date;
	bh=S0ugtA5HgkV4pnKBQptHXPwLqC7MlvJM3eizx6vfCY0=;
	b=P/vVCSTekMnXh7hlzr7IMKF64qhZN/S9q9Ruw19GEr8VQNvm8Jil8pX8HwE6S6kd
	TxLA3eLOBtuK1M1e6vHkED+0EGAzTW41aQ00Zw0uGkM3u2YnnfD+Mqy1JSnAx3qnM9X
	aSNulLGVbhZh2hjUM1Po6qWYL8ENlHsEi0Ihnthw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657115812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S0ugtA5HgkV4pnKBQptHXPwLqC7MlvJM3eizx6vfCY0=;
	b=POzn4ZG+taeisWX3wRIN9T7+eUFRmhphbS2NCjdGEg+fgcjCn19D/k/El4wCxiY4
	DcB8Ww5dcwLpt1+dmqEtwJMaUViwuOvrskXckuqD4d3Z1nlG1k8c3j77GJrWSIeC2kZ
	fgP0hRru3C+SJfEiwHO6vEnFz/EgU9dLfsYrh4jQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d3cca1b3-bf479900-17e8-4b4b-972f-34e8fbc52c65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0ca59f21393e023fcd8a076409c394f368a6078161e82c9c0dc3a0a6b09566e
Date: Wed, 6 Jul 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657115812
