Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE6C258A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 19:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647806185;
	h=To:Subject:From:Message-Id:Date;
	bh=18PAbpShZ+SPMqrrFNxXusub8Q4OHq27NdLpFd4HpOQ=;
	b=QoF2FPjBgba62cNvPmSYQMZIM/qbyAdEvnWUkGfY8GdUa35RAyRIxFqmCq0Hdmb8
	kIT8YeKNN3p2E7Z8rivjTFTX0oFjLKu/3yLKxnQPVlcDI1qk68Q4mK90PZPAXH2Gwh4
	zQTIsqH41cKdnDns2PDlJzIVqblTGaHksj1FxhPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647806185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=18PAbpShZ+SPMqrrFNxXusub8Q4OHq27NdLpFd4HpOQ=;
	b=CmNtLY87Zlhwk350RNqcWcugYsz0z6rfpLit9ZSRUY8zgyalvJhI2l8Fl+UMtmF0
	Qy9Z6OYzZB64DuvmUzkLV0q/OFmbevEA1Am9NzLAlFz51/3sh+K4N5ohLrsWvB9m6fS
	dLIwv2WHoxAr479EHVXD/fDmworMhndujuie8ej8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa8e6fd3e-1f8c2358-33e3-40e5-8773-a8c21d371bc1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84bd0e86a072af381d3d5f155408f33ddb42d4a335e86282b4c914086cdb3d81
Date: Sun, 20 Mar 2022 19:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647806184
