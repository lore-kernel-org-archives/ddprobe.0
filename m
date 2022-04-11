Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDCF138A
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 11:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649675158;
	h=To:Subject:From:Message-Id:Date;
	bh=eMa+21nfuaPCnmZxUavJys/R+Yd9GTsSb1gpEWqf/4U=;
	b=TX5fMXADn95t01w0rj4XavmydJ9UB8V9nFK9eVjxpAbh3WP1Y55JY/vszCETbu7F
	T0REmmrDrPEn7GkgBNR2ZeTl60gih94rVqCmzpn+coi/xhX68xjjzzueLG41ZjhwUt3
	34TBXtbnVVUhsRyPIyIV7/66K2IjYjrshkTYkvLE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649675158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eMa+21nfuaPCnmZxUavJys/R+Yd9GTsSb1gpEWqf/4U=;
	b=aeMDwkTKE0aAkOR/i3se6iJaGwxQ3qh4y4Vus0vJv6mELv/WYGzlW/4z33AcVhBP
	H21di//xvJ1RjH439ZojGMZfgkYyk1tdqM1AOSAaaMPtwtXcp3Ca36LqUDzES8BLViX
	hyRnsAfydtInVm9W9LWmSJtkhPDH6TpmiBuznzMY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180184d42d9-d5ec8400-c715-4cbd-872d-d3204ffa2c84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89fa7b0f8eb2f2e9f6e4ed299e38e867ec2ce0f0817032cc18fc1e8f46f1d361
Date: Mon, 11 Apr 2022 11:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649675158
