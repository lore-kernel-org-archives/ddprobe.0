Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6040F7C
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 19:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648842058;
	h=To:Subject:From:Message-Id:Date;
	bh=HmUOIl6JpCWrhOxPlUkKipIjrGdGmJ3pq+jR4HNya38=;
	b=lkF3P5mSOP/SO1jAZeX6ThxuI2ojnX30RRSlOFMyy3OiER3O4VAKqtlzyI2NcaNM
	TT/gMEpZfSnlhh/liuYId+NDHLWVV/8D+wvjqgeKiGQQKQ02ay45vSzsYXslpBHDAhf
	znOj/RG3aU+wtUG4o5+JnhUTxEUEqKZ+Nft9KDuk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648842058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HmUOIl6JpCWrhOxPlUkKipIjrGdGmJ3pq+jR4HNya38=;
	b=FVmAd32ZXwjzo4GEEaQm2TgNT8ei4ErGHCvdnbqPbwc/FDsBOEw9i2XehWI0NMPT
	wH9SZrNnI/vI9O7M+R1t/9OjE316852dkFSENlUYIeXMH4aNinN7jRzHISR7xDGp88D
	SgC1VO/POD9r8sM8H1wptrSI2RFqe0N76F8m+gPk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe6a52a76-a6824620-912b-473d-8629-657f7b95afd0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2080f43903e4cdcf14b88c0aa66a6250379d7209a572bdce0cecdf5525319f80
Date: Fri, 1 Apr 2022 19:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648842058
