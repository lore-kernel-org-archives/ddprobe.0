Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D657B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660801252;
	h=To:Subject:From:Message-Id:Date;
	bh=qgeINATHZ0rqZUrVQNP0FkUspFAVnSFRvksY4bNVbJE=;
	b=POVTVVFonY8cYDyiRTP8WJRHrzRhpS3bEIjdot/nxP4kudBVk/xY3yxdopD2lMu8
	6L/8Oi9N6pTQ9WE22UHyeHcdbehM+fMozGLg9sE5D3MexnF+7FbZME6TbnfngmZfJdg
	O2b6eeLjcRBmPjC/8iHdddieqNL1umwJOFBacCmA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660801252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qgeINATHZ0rqZUrVQNP0FkUspFAVnSFRvksY4bNVbJE=;
	b=RBuCDez3SZKR7fMKg2ovOfcl+CjPnKGz6DSi71Xn+ARM8SqstxPGCXM6MsPDsEsR
	Ksq25W9/ALqiU73YeURaQInbbVwmy9rhPynzEdtC2GDEhpsfRPhFyiv4pnbtuqTp0EZ
	7VHAzJWU/0ROBTMF4gxcFgoheNBrlQ3OvzHC2z8g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182af77fce4-139b352d-087f-449e-b97b-d6790e79d433-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64b22e560e5d1e338dfa02fbd06baad9ebab393490633373d2babc2a91f5788e
Date: Thu, 18 Aug 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660801252
