Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78CE20E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647749785;
	h=To:Subject:From:Message-Id:Date;
	bh=YXUFsonDUJtzoFQIadY3MyfiQ85vZ0LUEBtNse1SzX8=;
	b=VUt88u3Hf3+Z/UXBhO18YntaYwRCz9h7TaqJ0OjWNpoQV18ZnB8FTRLJnNjBysXY
	mb7ebZxMeX5lDpbUAXwTTyL0dwRQFXiAafIFe1JCPRCYItGNjJyLaNmreKr1Y2lQYb2
	WmTK4dd+IIPTbJCIuh5YzzViv/hCAkumKz3W5f7w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647749785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YXUFsonDUJtzoFQIadY3MyfiQ85vZ0LUEBtNse1SzX8=;
	b=WM9uUk+7JEK5OTdtyFBYdVddcQqTrUcZbifS8r7/Hl3+H3xJm5ZkzuzfV9BgAu34
	qJE8CPe7+NGLN8ydGlkS4zaIJW1CrGm07sCwadSxxkVXQm/SM5SyiO0Efv2o+C+v7KD
	80iPIqTV1BbdCcin8OgNM/vx2ofsWgCfRQRuYYc4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa58a64c7-aed76f4d-812b-44ba-b4e6-b4ef56f505af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42af62fded062f233374b1d398cbf534844d00e21409aac8e74b48e830169f21
Date: Sun, 20 Mar 2022 04:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647749784
