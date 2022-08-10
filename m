Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4802CA7
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660147252;
	h=To:Subject:From:Message-Id:Date;
	bh=iw0FpjVkjep2ez9qakMrloIOg1P102OPswkACJ4hYKE=;
	b=PKrm53CMv5uD1fzw8rMZQ+d9UxJpKLKtREh/6g0YawmBzvOr37gNju2VKgImIY15
	3Sax03TWAecycvaumOF/f91IUCTm4AP1yVwSI3hc1wAlo44Wc9ID7Hvu4+LFS0zIoiL
	W1+iN7URGvO53dt9FZTCgaDQb73lmDPYp73tq5Jk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660147252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iw0FpjVkjep2ez9qakMrloIOg1P102OPswkACJ4hYKE=;
	b=RgzrGK4lTgDDfYMtANlvsZImHuCvPRaKVVqddZpgNZnm8evwvJPc2iS/0cyUMCJi
	2EiSHUAaMoyaCDriCBddeXC1NzlLdN8qgDG1OYWMWwJP1mH2YJ3qO/ipkH+3FZwP75Q
	st3jNMCSiRheyR5I3imx1tRXwvGjquOe9k2mGUrE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182887cbd2f-42d06bfd-7837-4305-90bd-c2f59ff4d4d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91baab77c454a3a560a1ba94161d66913d5661857ea28f3eb0294035ab8154ae
Date: Wed, 10 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660147252
