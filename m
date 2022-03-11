Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5253B7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 02:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646967084;
	h=To:Subject:From:Message-Id:Date;
	bh=gP/ts9PwePIUjdjpRmZ0Krfvi7nQEzSJmzWSrH7/DLA=;
	b=ZaJL9pwF1Aik9ScfBDqcmDiUU05C3JbITDDQKPxaL/hC960OoO/onDRhoMi1UBmX
	87Tb9dH/3kKAoFtNDufLYjTC+GuoAzrSSYGdym3OsXQMRHYGsLTUozVYr5FmxYzQWdp
	TVRpahQNmUgsraMG0XSP88BKxYGoz0s/P4ZNZU38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646967084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gP/ts9PwePIUjdjpRmZ0Krfvi7nQEzSJmzWSrH7/DLA=;
	b=Z0SP/Ok8q/h3Y7UOg79VuAnH8A4nGre85aGrRMDO+rvTldZJb5yhW9BXvD7T8/G1
	CYeR+s1n26e8UxyDZVmNevc0ZRQDzirUq0/COf4yOB9fFJPtqYc5oPZNDNDlB4A7ThJ
	P1J/OMGq9y+oPWtVMLS58obwSSNAEoRv0MDjS5Tg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76e356b9-31f195e3-9370-4844-94aa-cf73bd44274b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c3d7a88f3bb7c5c025b7fff54f5690eed8fd04568fc0294847da68cd15454bb
Date: Fri, 11 Mar 2022 02:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646967084
