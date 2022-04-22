Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114041FCC
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 00:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650588898;
	h=To:Subject:From:Message-Id:Date;
	bh=IM/IqogfcivYnXxOahoMunhTm4SfpduoYdiuovPq/JM=;
	b=QPIENJCKcrzvOX8P1mBrvi9+tLnAWtDFHenfB9wr0lu/7gXG0MWuc5weBHXgCRuZ
	N5BUph9rPtRjVVYNnfKRSUR4xL8MUj3dK33Gjef86syWaC2cjET0fz4sP3dKQ67yvu3
	tl7YEqoAEE2nzeGmDnr/nzNQBZHt3+WLl7EMyjcE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650588898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IM/IqogfcivYnXxOahoMunhTm4SfpduoYdiuovPq/JM=;
	b=ctzHfwo1AIb+QFLb/dnTpYL/3N3g34Bby84IqJwdOjg+jalJkFQRZvpYercNLDHj
	nqn3JysepUZ0VBPkF5xx0dVDSbUUtRL7T32veqxNxQw4d/VXxw37De2w9VEilIk4hNM
	jf+qYNDq4EO0ujfOUmqxJMbmUk8M/jKWa5L4cP4I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804ec3d3e7-49df83ba-7567-45d7-af44-f176374187e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d44098a7b13186115b570130d37b7d87c3d1822361fd08173ef9b49a339b873c
Date: Fri, 22 Apr 2022 00:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650588898
