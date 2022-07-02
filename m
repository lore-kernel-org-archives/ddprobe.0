Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E3E1365
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 00:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656723412;
	h=To:Subject:From:Message-Id:Date;
	bh=+QnZs2jlOBRc0+MXY3oitPKf0ZOamTDZlD3QScDcfjo=;
	b=ZlLkJ/bnCm7tJq+9Gp2pbtNh9a+teYzxlm0ZnD91uU0UsevEgI645Hs7P/TL0NeP
	vwPXl3did1KvA8AC9Pt7Q6MMIYrf1fvtbiKGBpm1ubyTCOaIHqtJhWQA8f3E9XFskhg
	l3ksB0GZPoSr6Yrxn+Y1CXisiFUm/S1T08+krEJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656723412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+QnZs2jlOBRc0+MXY3oitPKf0ZOamTDZlD3QScDcfjo=;
	b=H+bF1kEQdJcdw9scFz7cgTKJSmYEIJBnzHIRsptWvj91vsCOBDDaTfQ1b3PMRKvW
	bBjqbTyOMsN7jm4VZrjVcTFmIyfOzdJ9MrV0i8tz9kYzvhLzH32qvgKqU+GvkXmzpdo
	cYcD8mU2eV+4oq3eLkZY5zzyUU5qlf9fCOWk14Aw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bc69152d-b3c186bd-c7e1-4497-bf52-881899ecc136-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c26e4191edf0fbd755e337c704829c2520adb4ca285d143923d51a097dc7bbb7
Date: Sat, 2 Jul 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656723412
