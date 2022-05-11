Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260D617DA
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 11:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652266979;
	h=To:Subject:From:Message-Id:Date;
	bh=lailZMtc0rfD6ms/OvoqbSNe5sIE8sJq9a5LX7KyT8o=;
	b=JQfBgfYodesmojgBa6uQ6ftu0n1QC/d/yionRmMlJHJjzEhZiSpsoA5j6KqQ8XOB
	WkaBLbrVNPOlyFMG2Cc0U4LX2bfPtjhjtw2UUtOSxdVbNjtR23JcEm+zpADExsYiKvv
	F6F0o9+64cPCGCUWK87jFa60qZsLdRxa1IKicvxY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652266979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lailZMtc0rfD6ms/OvoqbSNe5sIE8sJq9a5LX7KyT8o=;
	b=YF74q15jieYGWRyNAro4xQa5aZToJQqLo8Fb+5KBDeTDrXg6QjXP22MA7DyRsVq9
	lkqvCt45zde6GQPJT/LZ7Kl6CD500mFd/yM3EgSMD3jOC48zP2A05rmHBtPgQ1OVdMD
	4TQF2Ho2TJp25c+ONutJdGdM9Ur6mqjr80xVy5KU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b2c94fdd-818f5d99-88ef-497c-81a9-7b6c947dc07c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0527c46896355e42e3fe73da5c376df5e218b88c114426cdb5ba867b2938357e
Date: Wed, 11 May 2022 11:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652266979
