Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABF2A20E4
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 06:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647671185;
	h=To:Subject:From:Message-Id:Date;
	bh=gwm7A/rEqVJ8FHLjHrNkIZcO+Osib9IS/QAg3mLJGSg=;
	b=YgZweeFep9xdvr5elQjnJOBhCyzWylZe248ET1UAn3paLUTp8OwHZYv5Nv6hzJS7
	qRk/70uoMs2wDyMg8UW/KEli/374Wx+hgO8TAeDgpzg5C9ZNpFpbYS+p60WQfsGxbpJ
	YVGMz3OfJDBgyhr4SoJ6F6Gg/HL8Z8Kh6jMr3Idk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647671185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gwm7A/rEqVJ8FHLjHrNkIZcO+Osib9IS/QAg3mLJGSg=;
	b=Usacxp1PhOEm4mhaE3ocC3tyPELxmFOrKunECwAFO1v/RbETxxW+crrwR4uE/fHf
	ne0//Mv/s0VAmSs2gnBMqaQ885hTO8Wb5zZd6CpDUVMcb3VfseAz7+SqUKVi5TtzIJI
	Ob9c06amCSi0H2l/wYMrOlj79VBxZ0uzHTWEV/40=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa0db0d85-97b662ba-5a44-44ff-b0aa-484e69472c41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1a89513b7609d8d61d0f0d3ff2cc6b8eb40c4cb9fa9d0759452e9630739d06f
Date: Sat, 19 Mar 2022 06:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647671184
