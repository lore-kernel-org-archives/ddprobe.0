Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56978EBF
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 05:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648791898;
	h=To:Subject:From:Message-Id:Date;
	bh=FK93bO3aw0TQra3d8QKf+LPwEZ/0+TmFwqdKdo+/o8A=;
	b=DClNw7wS6zjoNUcOpvAR5n8ozXMZSAdfukfxfkuKMnM+NA2sQrvWKq1k363InH1W
	6HHrQbJj5xqqgDMjj/lOpDqAC+XWzhK683INAQtnM8FlB5p0yUPP6WA0w+tuZpWGoct
	lvqus5Ucp2Q30+B75np19Q1MRp5H9WPVdaheyrTI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648791898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FK93bO3aw0TQra3d8QKf+LPwEZ/0+TmFwqdKdo+/o8A=;
	b=JkWFXaQxZTs5A1PRCzrbadsL+S1+E3rnASUY2IRa75kfjLxAQTUjQ4fIIAT8JJrN
	y612T3qXVAY0k9lRLtQMIHL8xCeTk1689AESlgXA+cM0abJJumzGwKFP8PkZvURum6K
	qlBL28j7EW6mz/+xLVCm0tJbJtv3g9Y29QxfjxHI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe3a7c8c6-10156b94-95d4-4a3f-882b-20f2e49d9940-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6a91d9bbfef86d0d874f4a4219239d26365bf9febade9dc1fd40106ee8427d4
Date: Fri, 1 Apr 2022 05:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648791898
