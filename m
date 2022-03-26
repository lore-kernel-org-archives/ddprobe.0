Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 884937E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 06:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648275778;
	h=To:Subject:From:Message-Id:Date;
	bh=+Y5HhUb+8xeN76CScyJbIWgK2nVfOMopapbP6DBhuKc=;
	b=BU7HjLtuPrqUXvLZe3ppg3TgModrszAFx6booUOFCO/71cZPbDdQ6LM7mevHlNRA
	aY7/J9e/vdiXb7XSM62XWl4w8lePtuUhX4MbsGd9GoTmKZL62FOH9zaCQQPWSq3hiVp
	sP7jeuV4t9/HSygseDZMROGJ2EAYKQzqjmUQN6s0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648275778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Y5HhUb+8xeN76CScyJbIWgK2nVfOMopapbP6DBhuKc=;
	b=Rq1cX4fPqtAjAdQlADBN4u/rWIdpSpbvv9BGcbnux+jS0QUnSRGB0uF8ahwmySGA
	uhNCSATGxmPlDJhv/kzcBiu5Iwu0tM0puKUJTpgpO0nEZ24DAyxyYPbMXkN2ef9vfay
	Nd/8yVCdyVKJEIWBXkkCr3ujeKWY/0zpLuw0cBNo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc4e46b08-2e428982-c3e5-47f4-888c-64c2f2a6b41c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08b3157bf3eb5ecadbcfe2830110cede94e9d5248e32f279d0fa0728be66ad58
Date: Sat, 26 Mar 2022 06:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648275778
