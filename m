Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D816AAC
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 23:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646434885;
	h=To:Subject:From:Message-Id:Date;
	bh=XDCYmB9SGuWj1v694j3A5h9f0dMz6IZwG+DEDfUbsrk=;
	b=boSq44+SIopAuHx4ITkiA9D5B8IEX7OfSYd01AEodzxhrWkq2G23mzrbK9dvot/E
	EFnscLYkJ00YgHR2Ihn1KUDqZbTaU//arNS6dg1nIuj8c3DKSzp+2F5OQOCDiCky/l+
	e5K4qfVsN6hUHDxLXniJGkUYHkZiGDv4o+Ew1K90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646434885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XDCYmB9SGuWj1v694j3A5h9f0dMz6IZwG+DEDfUbsrk=;
	b=HVlHUYR68IHBKZGRbsLw3naPIShqpELjVFZkjpnxsBbIZC3e6qChtHmby2Pwe2wc
	nbNNAYwzMhspwL9kM/jSSSzotvjrGWPU6dsN5O2tbHjRXNi0qKwfHtxbnspqOdHyNo4
	JrRrwcXPe/OWAyXMuPhJyRaUyWv3DqTj5gAmTCQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f572a9d1b-803aeead-eaba-4d14-b30c-e4c3807cfbd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99a739b86c9214741cf1bc7c1779b189bcc7259877e3d3eacb29a73af2f1975c
Date: Fri, 4 Mar 2022 23:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646434884
