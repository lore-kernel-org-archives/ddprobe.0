Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D517B
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 14:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649688238;
	h=To:Subject:From:Message-Id:Date;
	bh=prfSClxNA5+oddMzz3zyUxHWNCBSatbXi1PwZhziooY=;
	b=VIZykIfXwqqazV9I36UDByQxIiTVlSPvNOHdQo+3b7DIpAwX2DPi5BKdeNjwieHd
	XxlQ2lIu5SPWqrSizo5dsTXKKguec8BvFv6Z7Vz7QcXNOut6byxrIyu1okG/aqfAcDd
	aGnzOoWe7PUBgsfbNfZelOpSzLK+k0zmn5V+J0hA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649688238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=prfSClxNA5+oddMzz3zyUxHWNCBSatbXi1PwZhziooY=;
	b=RxslUfQzg4ZqML6GIbCWRQc4rJdIPB2v1vgRfEkfl4hqQ26CRqQ2l7WSxpC+Tiv7
	d1ZmYuA/BWGdH86YQ7WYNZBExclaDLrLoylaKk5xDfZMczIGSf/UGKlwAaRp1lOR8Fe
	kjj+r0y/KHyKhN9TKJBIB6HT/suEd0kiCc3cIGSw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801914d8c8-1dc4e746-1f7e-4829-b68f-b6015fdf2ea3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 533d37eadcc093f564023cd22d0a13fec11860c70998e1de2850020542eb66fc
Date: Mon, 11 Apr 2022 14:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649688238
