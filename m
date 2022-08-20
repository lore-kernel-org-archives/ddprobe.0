Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5891120E7
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660975252;
	h=To:Subject:From:Message-Id:Date;
	bh=MipEuJ8E5cA8JPoYEwQ4OPFNG4CWzqUltqHi/DwGCLs=;
	b=JSZD3MywWfazho+cvrmHJe+rsL4PABX1vpxaa3LCOh/0F7e1btrX5Kurb70Dw38L
	rYD5by6utXQCfAnR02llQd5GCRrygdr03fgRKRpdNT6LvMEm1Ndl9rJcYLq0nAtKy+V
	niN9ZXPahsX0UDrWfkmc8HG0fLoJN/rExZVK3fhw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660975252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MipEuJ8E5cA8JPoYEwQ4OPFNG4CWzqUltqHi/DwGCLs=;
	b=gCLxLRN67pGryAa1XYWcAMzNpFLx4LyvKB4ZcJd2+n1IOxZsKYpMUnkhT4Xrdm1W
	tR8Cze05bXOffqLLhrWBAChdz/jkUNx2PB4keX4pMlNNIj8B1VdAb38i3LI70fcetx4
	47zoG/iC8KVNoBvdDW0aA7SLNfT2DlYZmMqs/qkc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b9d70490-7d94e476-2e91-4e39-8d3a-cf92d061cf61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eab42167bc008c8f8d77572e24944d385dc5f466f9edae2ffca0813509443592
Date: Sat, 20 Aug 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660975252
