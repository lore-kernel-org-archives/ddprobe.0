Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127631FA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 04:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655267159;
	h=To:Subject:From:Message-Id:Date;
	bh=3L90Rq6V++oBRuK5XEWPEpcRG7wdWKSUTxEVx7YafaA=;
	b=N0/gC+OHjteX+aR/tH/ORLYy2yXYEp+Rp6SnZV/rpOhTFTjdTelzGM/B7zKLSnVB
	hfdI7YVhE8sRrSCl2sBqZIAjR2NKiG0qgeIJ+xEfl5viTeNVbbkK9dKiemQjuUlbvs8
	9cxAAYPBr6KMMiHCVa3rXCAu+WxfXj1hkpnRkwYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655267159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3L90Rq6V++oBRuK5XEWPEpcRG7wdWKSUTxEVx7YafaA=;
	b=HdchaRguJAKstn09zzjza18cidCW3UlQnVhHsg+J3KduragxeQKGRv+SqBYbjgnI
	88zDuOJafzCWjNxRnpUQKXbLvk7ej4GDopO6u6MaQvthxWy/TEwnvdY4tJHjPiV5zyW
	rdAPxCureIgHaFpg/wSoudi39L81MHWr09vhsolk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181659c6cdf-221cbc66-97e5-4402-b1ce-6fd5f8f0bdd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddca52d99db3bbbf0ea8d1206c9dbed65ac3e25991c6cd45517be9d649f3094f
Date: Wed, 15 Jun 2022 04:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655267159
