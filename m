Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CEE923AB
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646578885;
	h=To:Subject:From:Message-Id:Date;
	bh=foF2QD9Bw6zUS0wgzro/Qb/4mHuOnI3z9703OQwlXmE=;
	b=fo/AjDF730CZsxTUKMkT6IhgGnQj7y7Yf+8aL3JoQHNeJv86N0KQO+PHpvp7SUvx
	wL5XDz8e0hY9aPNVtzBl4xfiQf0EDQBYNG/b+5maNQf609d2kKB/TkG09niuf7jfyhi
	2f1QjrF6AWGw5TqDhvvLh0ElFmTGQ4VA5ivx8BLU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646578885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=foF2QD9Bw6zUS0wgzro/Qb/4mHuOnI3z9703OQwlXmE=;
	b=V9FP9JZSv7qJHMDpPnMNm5O109ddZXslDMOrWxybHHY/2h2nn41SEQDPQfQkQMc/
	ViE+NQOl6Nmk7PgfZQlAQNLO/gluJP6J+VKHu7vIe6n8ngR6UTjuk1CykMrTg84As4x
	0FnbiBkfw9fxGPVp0V2xeAngHJ0HpSuZx5vCbBng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5fbfe0bc-cb4e8f83-f4c0-4d2f-b1fa-e97c55f2f507-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3b3a91405a5d35866d99d70882f5ed62db2470083beb8cca948a32d5f981faf
Date: Sun, 6 Mar 2022 15:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646578884
