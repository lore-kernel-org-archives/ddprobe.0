Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC7C7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 13:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655301359;
	h=To:Subject:From:Message-Id:Date;
	bh=9wDiFEe/gu2Ka/gMk+2hFBy4lnd7Aj4ZL7e9XOF5+1g=;
	b=XJgaZZ5jT5ammNDVQZ/6ebCVRMN9Vd+ufuAlIqbW+mlh1+wCk0lHPeqmyekNti4D
	qBc+/AJ+msduP3+78WKwZsyq+ix9ZPGk2Kqs/mfmDKpf/T1RzQmAx1SbaYGJsDQ8Vsn
	uU571zvW5XPXoWxADawWAppOp8ovVwh8DlPThn44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655301359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9wDiFEe/gu2Ka/gMk+2hFBy4lnd7Aj4ZL7e9XOF5+1g=;
	b=kSL+xq9O9vNgW5QLjYm/vH5EWoAZWe5e15Q375669+1Ci6kFwhJ21YXCZ4QOMRYC
	QykNsxOzqsVwkMbCt8jioy60vTwPHnDFyaAS77mnhuHZwLobS35N+E2AcNHaYC3qYt7
	duf+hS64bIaLx7n+Ndv13ZChY4nmsyAmqTiC24HA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018167a646b1-77663a42-f84b-40b7-8d83-9443880d159b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad9076f7f8a8b0d7ac65cd4a596be459db3746978d9b7ee65ef40d761c4de5fe
Date: Wed, 15 Jun 2022 13:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655301359
