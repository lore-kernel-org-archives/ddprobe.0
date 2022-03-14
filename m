Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00F47A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647248484;
	h=To:Subject:From:Message-Id:Date;
	bh=4afnVNJrMBinpV/HBIydyWPNp9hYd6cuyseZi05DMsc=;
	b=KKJdUuKl24MENhCWvSi1E1i/dWXbgyo2ziVZjxjdnGFqJq+Q7m2AvmbGVglFGqq1
	otFd10RhH8PBOpxjWLGEsviUHM6J+B9XjFt+ziOwPOT6Opg38BTTOJVThDrb20bi9P/
	9obSE4JwZ+bLtl6zvftyBTUTOSisN3ugwqoYMHbY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647248484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4afnVNJrMBinpV/HBIydyWPNp9hYd6cuyseZi05DMsc=;
	b=baa/uOJvM2dpuMs16qfhUIEmA5huC4jaHtKqbmEPGTm5bYZ9CQHiHV5TBSub/b7t
	K3AjToaMqEsT44ceMT67A9IWa40fedD3HjDSLRIp+UoEvhbga4JydK2/UF2GHkArnG6
	OsQ9SnebIDF30iGkACHzO7vpeOXZ9oAdOy6N14Pc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f87a92995-ac8a4212-0ae9-4768-94ef-70ede3925bf0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cb3258519a5bf26479b7d3e55a1411b6d473bfe4f402dcb0158ef5a23853661
Date: Mon, 14 Mar 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647248484
