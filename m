Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376C47A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 17:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646502384;
	h=To:Subject:From:Message-Id:Date;
	bh=+9mHwMEz+FJRzwNctOhIB/w02GbLg/L4qJG8rKuYEdo=;
	b=S3EYq92UghWsvP8zN31dp2tT9NyEFt4ybEJz8L/28EkeqOF0kZllbDv7XD6oC6ob
	IbQExnJjBZykyY5+oHCmeETliMnPtZhtSYbLj1O1xDL44eCusOCWd3/HNXyhjNsbFAA
	y+ZeUVQ+/TnOQj3BHl2oNGoaGzOmYIs0fYpjkovQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646502384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+9mHwMEz+FJRzwNctOhIB/w02GbLg/L4qJG8rKuYEdo=;
	b=kLIAbsw7k4xAfSlzV165wtgpBELsZk0ru+TZ0Ynk9xR0fOQ+ZHiPDeRHEHEqg72l
	Dyc1/VgyISP6wpZcVXIsNjE8lfLJNyq5WkltQC2Lx5LPNMhQfCGGPVS7Znaq+xQepPL
	dn6cHbnHZslZRPJuMswI0B0jZM21L5EEgpp7rf5I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5b309442-8af9464d-36f5-488f-8f65-ad11651e56df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b04658d359f53fd1083ee94caf233c4084b67df0f95c3b9ac6e922fdd32ff906
Date: Sat, 5 Mar 2022 17:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646502384
