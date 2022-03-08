Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750BB2F2F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 19:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646768484;
	h=To:Subject:From:Message-Id:Date;
	bh=aMam651kpTfxBitOn7+Z1KhnSKUMRalYYDHfbAju/Fc=;
	b=Fdxaz5bD7GHcgD0OPrM0fWM8k2y3aQYyjC6/4AstRBt74jGtFWh56sDvetHCeSAq
	q3RZpWr40mujuKmXdZewCk+VH3q1oRvWocAdALI9UkytfQZG4CL+TRIiGd8zg1qJ8eJ
	GgvDiSX5HvWB/LsyN6BFlUQgB+0ad5nOnZMUiOhE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646768484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aMam651kpTfxBitOn7+Z1KhnSKUMRalYYDHfbAju/Fc=;
	b=UNLpd58KkyIvELFvmn28Oz0nLM80DnxRuMK+JkSjW3CZ2AF/p+Aeyg2PYHzftlZD
	KGBzbGu+X1ATxUqOXAQXvbd1eRyQsADCHjQ6HQm9JOAAaSYJoQMkdX0vQfqnAOF8bgg
	UO14+hF8a38FYse3b2tlSH9J3h7OjN4omES6PTz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6b0cf1a9-8c0d1ba4-c2db-4362-9ddd-32b2e59e97ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32e0d21445092ce62f0a23d30ccccac4d43cb76dfb21b27ebfbe599e6a8d1d2d
Date: Tue, 8 Mar 2022 19:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646768484
