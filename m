Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78B03205
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 16:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653150359;
	h=To:Subject:From:Message-Id:Date;
	bh=qrCgqkBDyZ7esjDpjJpRpjPVtF2deEqeEq0BPam1Jv4=;
	b=bHcMn26FkxXmL5SCnWt1ax5JKrT7aQ/6bRqvU6vsBGqp+l747J2PfnXV53My4fGT
	k8l4PhaYqSGcw72k6FxDY5sGjSCwf3zYVOCarmR+bMxRhzKORJgaCri2n+2iDiCzsex
	pDrJhFroW4C5JHZ4ezbZ0In6YfvWdiRNQ1Fs3Mb0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653150359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qrCgqkBDyZ7esjDpjJpRpjPVtF2deEqeEq0BPam1Jv4=;
	b=L032I1Xny6lH2QkVofe8D8h1YewHO/QwJ6wMd2b0fBg+IcfoemXPo+yCbmY9soN+
	ihB+FcyM/plCRTUlC47SkcgW6ZcL0Uv1YK49wUBmlsKsG79SBLDZQLmM2mioTNuw1AP
	ArKx658n6zlyfs+vlPwNvhfX0rU/CK1yowsyL4P0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e7709edc-817ae340-7f81-4d33-97f9-ed1f3284a2a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 061d9f4f43a5985e7b6b2d31f88e8ece60e74198d866455fafbfb3c737fa3f13
Date: Sat, 21 May 2022 16:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653150359
