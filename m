Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA9587A
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646238085;
	h=To:Subject:From:Message-Id:Date;
	bh=ereYIBjm+9ngUy2TgDwhxnmdXz3QA0zJ85FBXfTrYQ4=;
	b=IP8z3+fkfLiXjVN8dbReuHmoLafpc3PFafucG2az7BU0WLvOZwPiVnYOjL/nMrD7
	+a8SubR5TMs+sTbBd1/c4c+Kq7BAU+VAacYaB0kIxAaS+7mfwJqpkOc49P2ITZQ+jPj
	UTVNI1fxbY1TOx/TQFFEiejAyG11ZrHlHSChyXgU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646238085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ereYIBjm+9ngUy2TgDwhxnmdXz3QA0zJ85FBXfTrYQ4=;
	b=cJMx110RlDYPhV8D5+QTO40jNM15a62O+KRCaUG7ZpU+4+kFKfKiwtlyLEukeDBD
	SMXzCsCd11Riz9kfArHZ4KtuiKcZEPDl++Lh2BNSyxA+eW7nM/tn3fZLzP+dP5kPzTs
	5Z/N36c7nwRf4DokN+CN8nzVt54GuIIwjt23e3ZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4b6fae7f-4e1cfdd5-e2c4-4306-b862-ea8a794ec7a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12554f408733467df73fcb322eb75d51b88e129cad85f592703ad02c4e0a1df0
Date: Wed, 2 Mar 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646238084
