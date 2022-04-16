Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E63227E
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 07:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650095758;
	h=To:Subject:From:Message-Id:Date;
	bh=aN0SZLCM5kKhs7s8O/HWHR+rhtyT8EiFn4F+Amw3dVo=;
	b=L9ms0xFu88AYb/0MknVgHdY/BYigsacA3B3m5kTIXpzNz04qTIUNMotSg10kXkki
	JTrik3OKKXgieApgblYFUeqzher/rN3AkrG3CqyGoIy81YP31IDpiKZ2SGdoG54X8nd
	7AjQR8wJkGB6NK5FKqr4uJrirj1+ulI8Yxga11qk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650095758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aN0SZLCM5kKhs7s8O/HWHR+rhtyT8EiFn4F+Amw3dVo=;
	b=eBPBAefkh3ALNh08VaihuDACIvIwMOk7cP38vtv0168dRwUweIWqsywVImXJUPPz
	2ETCCC/djFbS6pVYKq/H40tnmWqJ2ju3udJ3zu1J6EYkHAlaJtjipG4TQJenzGvAjZi
	7vqoOgD1YvAQ0PC7wmz8Aq+EOFNX85nqKmq96j98=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180315f1ba4-6a10d3cc-2484-4404-906e-b04dab4c2e44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 896f71c2657705b332127aa6d6f87a02e5930b8738bb5b82885d77a12efc1e71
Date: Sat, 16 Apr 2022 07:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650095758
