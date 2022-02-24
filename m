Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C133185D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645699585;
	h=To:Subject:From:Message-Id:Date;
	bh=IsuKuPyDDH+Siob3VdqzzevDa3IuLKV4Uj/wKn0iUEY=;
	b=YmRFIYLbQ1ItEJhvNq2cFKz5qAKq6guDrsr1rfN0JtQ4/Tml7S/UPULU0rXdlDSa
	7pSDXYQg2VIcY9xld2z6qWvnH5rJNbde00jJ6h8gc7dlR0UTOxfmCgaSE2M7j95JBGR
	TXu112NlIe1BkUNA4p/LyDiKwYy54Jh1LP1cDZBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645699585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IsuKuPyDDH+Siob3VdqzzevDa3IuLKV4Uj/wKn0iUEY=;
	b=X5Q5ew8E4OyoMqLILFgfR6vnEXvno6dJXe5OhXax5N7o7cvdlAl0BpWM/aie0vvn
	J2OKoaw/X5aJQcQqcTqLwTMAMWhcHVzY67FTxiX4ccvTwIGT5C4M3bSQsSZpMMbAMfi
	i+7T6GIDaXkgBZxqA58/FMpLV0W6O5ZC8NPyUJaU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2b56d2f5-92ac8ece-1e10-4611-bbc9-663e60929808-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1414ce2214af0f1ca1c0c850ff73e434a092281c07effd06561b20bb6b250045
Date: Thu, 24 Feb 2022 10:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645699584
