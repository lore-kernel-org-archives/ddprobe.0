Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2991B23A8
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 09:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657533412;
	h=To:Subject:From:Message-Id:Date;
	bh=nuClTbKOnn/5wG/F1qP8veI9ASVVjq8KDzHGIZzLDac=;
	b=dlyxpncZg5xVoKoDltNqvVGnVJ3XXwGDT8BWb0eF9qFpTdPiVQnSaaxbMDqxV8Rl
	AjJJQ+L9BolJTMBsT7uzA/ikrNDxZkSVJELUurzrM7gPY60Gg/500rZ4oiG6xBfzpS3
	qpOkihOLE9CwPl1sCo/7INgYfV3pRj/9MLJ6Xc+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657533412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nuClTbKOnn/5wG/F1qP8veI9ASVVjq8KDzHGIZzLDac=;
	b=LEj4Www4R4N5rRda+0LlwR3ehIkbMFDCfhlH6hOr9pbJimQqMS50+p1i0BfvJvmk
	CR+CrdNuwZ7z0tBVCgp782J8rcTT5ybWtL1bD6HlevMSDAMWesmDy4Pzm2Q8M/188V9
	qm9jv6BSPONTMeDTv/L0+GXdycGNU9JFV1YVLBSU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ecb0b3d4-a7f78dcf-83fb-4300-814e-bec80052aeb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ee5eda65cd8a8b5b7113567125f972f7d11f8b993082d93a755e1900589350a
Date: Mon, 11 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657533412
