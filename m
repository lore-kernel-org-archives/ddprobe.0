Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCD07C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 12:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650802978;
	h=To:Subject:From:Message-Id:Date;
	bh=ThOPncICZk/cf8eurO6V09AfGQa5kg7y63Skd2WhMj4=;
	b=Kbi04m/P0qBfvb3gdv9jIwKMBhWEHgaUdbGdr0uhApkofEJnn208tXtQ0wsMyAwD
	bnj6Gb38k+DhBp/tuX2q2k2hTbEoalBytXH/HXd53OLRs1B5rh+rDkS0RWSHny8i+eR
	ZYFj0m8z7wUylUEEzpDJi4T2AdFJ1VJ0+oe+M1W8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650802978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ThOPncICZk/cf8eurO6V09AfGQa5kg7y63Skd2WhMj4=;
	b=L2+3qSNkTCy8LeXmodsdz/5Ucx6KZ1tJGVjFXD3f7JXnE0Qn+uIPYKuktgt2npvY
	nB24FqqwsUCU95Qb20xGus+Ge0qJdYkfEZpkSGOCIgu4IxAhXyP+dhDd9kfgfllBabO
	oNVzYvarxkka070qQKuMXn8roaOmquNcG63PKVXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805b866e01-4cd2a63e-79d6-4ef5-988e-c47a12b75391-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9077f810cee2a40c446ca013b5473f9306115cfc0acb09c9aec95de42d96274
Date: Sun, 24 Apr 2022 12:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650802978
