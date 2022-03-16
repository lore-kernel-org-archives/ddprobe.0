Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718DD23B2
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 05:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647409884;
	h=To:Subject:From:Message-Id:Date;
	bh=P6Er56BeJWtNm2LCPFMOKNGXKb4hW81sIUDhogRfjuM=;
	b=h/1zSF9p/N6q1fzf8KGf8kFPlDShIXD3SYbuqF/wPajkIC7D6cg56tGtQm6F3GG+
	fIY2SEtXqDvsBoFrvdZeugGeOTwuL7wQCfvIhy45qyJ5kfV7rCXVnZOtA3K1hdChyOt
	WCcq9wFw7vraE9mXC+h15Ov1iVrqH6z2OKEyfXIQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647409884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P6Er56BeJWtNm2LCPFMOKNGXKb4hW81sIUDhogRfjuM=;
	b=e7EUwfvv525s98+lGpnWYAm0vSzruuRZz+04x5+suOqm3edK67Taw4PoGErgXqPs
	0MAtIdxXpgzW3DMiJKGoAADzgZGyuUiR3X7hl6p1pIfMAPbYjl096eAIgnl0NeHxfGr
	2Z+03id+qXVuZT7BCwjvn0RpIurKT24/YF9Fdi3o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9147ee72-7cdbe251-820e-4c5d-acd9-e5436eeb7f7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8ab74ffde7d7d25500cceee11dda6b822704b9a44fb0e35967bc01fd8adc864
Date: Wed, 16 Mar 2022 05:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647409884
