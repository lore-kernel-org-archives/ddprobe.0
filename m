Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E510C15D7
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 09:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646816785;
	h=To:Subject:From:Message-Id:Date;
	bh=oPuFtm/6xZmBQ88+lwvEe33X5d5IYFyhO/D7yph/MLI=;
	b=cZ//qS3NImnhpql8aEWjF0AmT0RFV3HFS8nAewY3wkSvH78RVFKSclzHLrHduPHp
	yCZu0b7eUHFIWHyak7Kv11zqkY6LeXTjcOWw1vd1NzPiRc+yW63gBi5BQ6HqLFs/kbr
	i30qLF3PphyPE7NpnDuMwpoOte0qShfCIsGv5v68=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646816785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oPuFtm/6xZmBQ88+lwvEe33X5d5IYFyhO/D7yph/MLI=;
	b=ViKeAs+mgT3x8qzEf7NNEHDzRM611IfzCbJdwlPuX9PCcmPw+cJRH2+IHCmhi0QT
	QAjbaf27sRLnC10ZiYlStm6hV7GebwYBK2QbLuIAEGa3pI2rN9u+4HjkzFqA0oNomJj
	7oZpPnby8X7iSQAPnbQ9/umxjLe+DUUHppB8EeoE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6dedf17e-9f0e15ad-4357-4fa7-95a9-ec49420f72bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0307f015f54ed0bc542b13b844233dcd85e4d9b18429084a5ea94e09e762e641
Date: Wed, 9 Mar 2022 09:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646816784
