Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B6C10E9
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656662812;
	h=To:Subject:From:Message-Id:Date;
	bh=8PJUcMCzbx8IalIiW06zU6lBowvOZCrYQJhJtyCWZ4k=;
	b=ftJb+8fTIGoIKD1+9OZ9mOaWQsdf02osPI69Cd3nATjECsE/0oJxIWDLAdZWCK9o
	NvsCkmMprsL2ysZwnzkMSIIW6xuo9rQJchg6ekTs4GV4JMbcsiqbdY+Lztt/Ra3XOoq
	0ALHpSm41sPxhpfUMmRruP+ntlI7yzm4/SDAWYpY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656662812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8PJUcMCzbx8IalIiW06zU6lBowvOZCrYQJhJtyCWZ4k=;
	b=ajXB3uQHKu7EOiMd49SKf6i37LjPQvnNbRMHv87/b2MBi5m5PcgbZ4HxkvQTy64W
	RmFaNJ1EmVGjMGDexNsS4njqkNw9ZuLwyMUZsOD+xlsTITPz+PX057IlMU6nQklkvzW
	W/HXT0esWm5RwkFhIosQujdnkbAiu7dBG4SEK6/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b8cc6667-40bcbda0-7332-4d59-a149-735b2221b362-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f12b06cf390e7a750030db5166f8491da3a95d7db4ecbb5bb4de04c8a0859bb
Date: Fri, 1 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656662812
