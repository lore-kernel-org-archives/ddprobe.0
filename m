Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DD67E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 14:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650982738;
	h=To:Subject:From:Message-Id:Date;
	bh=pIEmfOVDF3ZkYGBhpYZggSwTktfAoH7gsmJ/UMeQeCI=;
	b=gWe0H/BJl1o+jQKzPFrKJ23C9lfKdYSxXfSaLz/mAT6RixrEkjEJFgZa+ek2Pm0h
	h/feMRMNk4TYi1GdQZflpAKdiyT0VxqUse5AMWdzgSfENZp9uiNORPoZZHdjTEhzBxL
	6HLsXTEJZxv+fjZnFivSVw7dhbLanLo1MjRignjs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650982738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pIEmfOVDF3ZkYGBhpYZggSwTktfAoH7gsmJ/UMeQeCI=;
	b=Dop2AukfGk7jlag00lnzLfIme7K6PTKlmEsWuoO9mMty3ru1BPUR6EATCixEH8zf
	2QZGcIaVPWdfZ9oJgGQLjVnDmSagIA412tjjaHN4O7WjsHqeuwGMFjgHUF5bIMVYn6Z
	mDawzJJjeuaCqiddEeRNbBFS512OSyI8B/nADCpQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180663d5967-de4124e1-7a91-4afa-b1b7-38108c8d2169-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4001f226644382675ed754c908256837ecd804c67b517642c1315a79f0a65eb
Date: Tue, 26 Apr 2022 14:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650982738
