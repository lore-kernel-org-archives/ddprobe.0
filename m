Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CFB44366
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 19:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648494538;
	h=To:Subject:From:Message-Id:Date;
	bh=ZX+FypVDkQ4jkVVAHFMHkDZxC/88vudVflomEbWiM78=;
	b=W+UPcxhHCJ4GwOcNGkkltRCejfh8obBm1gJBdUF36v7R15hqBEFKMngzWnoZ80q/
	2vztTOvX3T5NBpNw0Wdty6jOfNEf3k88Cd1LAJYzt+TcGyaHzPUqKsJn5SKDaNsw915
	vaZPXBeJLk/4MzmvPJKn1qqYJRnO0m9/sYm1bjTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648494538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZX+FypVDkQ4jkVVAHFMHkDZxC/88vudVflomEbWiM78=;
	b=ame+8LL4Yl8dcveSxDMhV9cJ0xMW/XmM4q+52mk33j5MRTWXRKTAEDohzKtcHJE5
	1I5Pcr3pYtL/3PCcokmFJvQYX5VgrYX2PYTGZMePB/U+bF7JdQJtCLe07HTrtoj+hlf
	qZdErO8yLs1MeUrWph8z0zHW7lwSkjemzq9gnLiA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd1ee6e66-397b3f53-4895-4846-a307-1135835c1c9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66ec79ddcde7bc7fd112b99c92d528dd84ca8b7dacf80652fa6768137c9abf14
Date: Mon, 28 Mar 2022 19:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648494538
