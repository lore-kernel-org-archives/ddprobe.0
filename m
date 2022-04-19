Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179121364
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 14:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650378778;
	h=To:Subject:From:Message-Id:Date;
	bh=NN/wFx/q6rTzjDohRPzHzMzDUrXxunl6ReUfbzwcovk=;
	b=Uza30omqDA7fBHzQWJJuc2ElW2tw/44PBUSNAQtVuDRNp7bxxqcZJa8a9zRyES31
	lH8m36+AbzjcHGE86JVoF4VHNVUyfazcO9+0zVvRwm+E/y8LdvILTVtWynXN+dbkLfG
	BB4WLs7ngACGkCL0XBd2F4UGkIL7HK/u6rgcKTsw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650378778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NN/wFx/q6rTzjDohRPzHzMzDUrXxunl6ReUfbzwcovk=;
	b=HEJNsEldd3+WKjLakTepty3skmpiS2PzUcETYcHdEq5poAxaP8WtTR9xJjaXvT1j
	mQYLAVBygeJkD/5vbspurZiIDeTb3E0sFGxa1OswIZre5od76Y2LjCLca7eSnf749LF
	xHpCqTnAzPnL2ktXfKm87/aOBNT9H1EnDbycTZkA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180423da693-06963236-9807-40a4-85f7-8ebbabefc351-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f09152a487016aae22e7bc87e2caba444cb042a00b1f9d8f165f7b9047ffc3b5
Date: Tue, 19 Apr 2022 14:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650378778
