Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFDA84282
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647864984;
	h=To:Subject:From:Message-Id:Date;
	bh=vRqy4Wv0CjrjOOgItXAXdrng0QCv+jY6xTSms0d3+E4=;
	b=N2GBquMyDS3YmQgW0hDqJHRHFgJarV70acccf+rYgIuHpOAeBTY0luIZfdbXkZ2h
	tJGd0QbP4voXX0EudhZh580vakcjV1QGJ2q2iwBr3FpELza0Yv9wXht667oySbNwSlI
	Ui+iND2sszrhnbnTgIidqBQLe741FR6JM0I7KGFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647864984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vRqy4Wv0CjrjOOgItXAXdrng0QCv+jY6xTSms0d3+E4=;
	b=T7KRVm9u2Gk1n9uVhuov9DQd5YgUuywD9ryTvTN4804lbmxhTxXDvPzE//2NYD7t
	fuab4OjQn+ezE5iSbBOkmwt/K5AgRcTiNhxRS/E/aXHnFQV+RvZKmSv9lBZ7tE2kOlZ
	tlUZoaAz2pIu1ZNC+mez94ewMnNFZ9nqJdgZrFGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac6834c8-adec4989-bdf7-4b43-bb03-7db541aef8c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a3cf055f680afbdf94a92bae94fceb8adb6039fe3cce28f619c6187f5dd00bb
Date: Mon, 21 Mar 2022 12:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647864984
