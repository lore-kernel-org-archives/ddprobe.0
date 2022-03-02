Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 825377A
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 00:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646180484;
	h=To:Subject:From:Message-Id:Date;
	bh=oFi2HbBjLx2Ac0/Jc+9Ub03Qwtakg7R/HtO8f7/PJtw=;
	b=GNIdYHEJGNFbdPbgCmMq/gAATG2G+q+mgp/ZnEsM1eeZz2MUjzZxrydVVjA8lqAZ
	d+SKpop59XO7CxAUXpbaScJsZX613XWIBWnyGqyfk/BvpRLVIcYFRODlaA0yv3qWjTa
	X9/z6MS4AkSgN/DhCUQHV749GyOpDByjW+elyZpg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646180484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oFi2HbBjLx2Ac0/Jc+9Ub03Qwtakg7R/HtO8f7/PJtw=;
	b=HohJM8J6QBGhgUF5bUr5s8KzajXg7uLBCo31bzuf46E5fbQAC+i7BlX0CHTFHCP7
	ABCKgDbNsw8M8GAYO74DpTOAqYZIOqBOuGonr5/IuXHRK3QpUdSTdn52+0bhTAjaao/
	MTDXz8t9v6ak2YY27VdghPkJmXMbeD1LVYCHu+yQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4800c66a-4351f264-1429-4095-bdb1-8d0846d4685d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ce5e227bcdbb1dfb381f637df434f3e73343886226ee4e3d9489d66e82ade67
Date: Wed, 2 Mar 2022 00:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646180484
