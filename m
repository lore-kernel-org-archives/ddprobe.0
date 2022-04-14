Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCAAD7A
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 14:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649947498;
	h=To:Subject:From:Message-Id:Date;
	bh=TTEpzSUcBlvQ33oDn1a1SrLU+62dM8V3LRbthg8hl/Q=;
	b=DfJslCK6vvMQ4u5nmv+/hzYJK8ZYZaQHm53/l+VFydc49uNH9ZDnbFWj6RK7IpAU
	rBajgXgXJ1FREj5oQvWPBQmF5828t0bJ4pJN+WFIPw3YbOTM/QOxFTmKXjpTPyvBJkU
	WphaO580H3LDfxydLVh0wrtF0JKFAId414m8WJMg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649947498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TTEpzSUcBlvQ33oDn1a1SrLU+62dM8V3LRbthg8hl/Q=;
	b=C8YvFH4PJGyvpG3DZDbrNoj+eveDbjUbCI189elaUS2dEV4qOX53XqhGy4dhPHyv
	yqrvd9YKyn38j8UCxDiayylNk8KAeF3oOr7De4h8JtmqMVdeJgsxKp/FIc4uhjKaC0k
	U3wNlSBvwW9HLowRcxh41AWu9PdM1cXuReN+2uMI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802888d721-af123c87-c0de-42d3-8191-6539c538745e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87b970290b1fb4ace5e66a82eb137fdbdf33e7fdb328474eb1d9cfc33b707759
Date: Thu, 14 Apr 2022 14:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649947498
