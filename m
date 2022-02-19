Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A93953BE
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645287384;
	h=To:Subject:From:Message-Id:Date;
	bh=ueqiPjVmbEehSa1lh5u9DCPhOu6rOKeU62iNvTszMDE=;
	b=hEgSRpGZwlWKYtcf2I81RQpQgqvjNOnUpqRjNm+LRgzWxL4pf+J0pdA0iBbFknCK
	4mp64ooOwAnx+UIaQYamP4ere1MgdF5YMJm38HwKjt0JURi0SuQC1OjOicj7gzk+PKM
	vGzOgpr7t8WwaWCYhNmufILPcai0MbSc3Tk1/4ts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645287384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ueqiPjVmbEehSa1lh5u9DCPhOu6rOKeU62iNvTszMDE=;
	b=RarGZGzZANMvn68aBGq6Iszs0bkX114g/FoHENwboM4QZL10CawCQqc28QEGkHbU
	3XB65bCcWhoS2NuVXDlEXEUz/FCSj/Np5DGMKNG5CF6kIzmFr71Q9ku9hpOZu+vDPEs
	Z1CaKAUrMcXCi7Agy+DuG1vy/rmwTsj+MaR+Z8sg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f12c526ca-8094717f-f8b3-4c92-bb28-6ec81b3fcf7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8d8e9a4cdc1d61f0d6bf3de6ab8534ccad132dca401b6b9d047e32e2e3f25bd
Date: Sat, 19 Feb 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645287384
