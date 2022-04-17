Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053C2367
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 06:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650175258;
	h=To:Subject:From:Message-Id:Date;
	bh=H8QeRfrHIogOwlZe+VkT9Ts4Pv0dkE96B/vpv+wtXkw=;
	b=lRMztZ/i1BrCzEnSvviCE8o3kru8KWkIar+ir1HwI+0fe18FGzgxp5Mhv6q6yFmC
	7G2X2M8NWa7zKDi50MnV9Jt9Tr7arwFAwf3qV9o9kvHu/CDEPQ4lYvj2AoM36yzlDfE
	3P7iJIp+XLxNTPCsPfVjTW2Azd/xaB09OSQWtd64=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650175258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H8QeRfrHIogOwlZe+VkT9Ts4Pv0dkE96B/vpv+wtXkw=;
	b=XjOUv1/9oefvuibjKwcNzhaw/kd3ciSlvFImmiIWDJNQV5XJRgo7kq3akc51+qzh
	8XJsUUS7XesRT2RNhOuaec3jUo61E1Ne8V3M3cmBQ9ehg7SEaf2Mn+zRAduQGUMw80i
	GqoXv8DRKt1ZHs3JX0kQfeV2lswge4FoA5lmYxGk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180361c2eb0-13283996-2515-4198-b135-2dbe8a1b4170-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a04ba42b754bb632bcc0e9c213003e7b3a779c97c8317ef9bcea405003477846
Date: Sun, 17 Apr 2022 06:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650175258
