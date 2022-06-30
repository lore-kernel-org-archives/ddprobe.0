Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAAB813
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 05:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656566812;
	h=To:Subject:From:Message-Id:Date;
	bh=PdvrSKkBbFXtSHxjv714P2Lhq4D/SdoHSj+/PAfkx4Q=;
	b=SoVpIBytqY/OXzC3HEqQDOC8QVrNxoZ12pi/8FvrouNlcTLe+6R2BAzHAC7yuKx7
	FZehyqLsy+DU1tXEcQ3GT66+WfiYQuc1GEyApd3leo+8VDbavmuLtX+xDuRyXzYkubL
	INwzo6XyWou9LnVHAuYmLJQIdY3ULRxN//t7yZuU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656566812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PdvrSKkBbFXtSHxjv714P2Lhq4D/SdoHSj+/PAfkx4Q=;
	b=P+YHM4N/9btN88gqx7oDZxRQy75YYF/u0EYcdKnNrKc1H+zkkN/YJaZtaJJQwJMB
	p3VqFbpJrm3XWgUGgLvOeyMqzemS8+twxUcXNUeNFaNXvWBvsaZAh8oQFfyNuR9WfJy
	3ZO97VFQWXQtWZZjhacHc9KfIGrtaEvYbaG7InrY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b3138e85-287a5b01-1ac8-4437-938c-3f1b5ca17587-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74b6ac4c8379de234726e3c14ee76a0ccb2fcebbafa89f024fcc39c0c9c5e17a
Date: Thu, 30 Jun 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656566812
