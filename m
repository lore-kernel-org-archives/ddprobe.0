Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A8F37A
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646536284;
	h=To:Subject:From:Message-Id:Date;
	bh=7WOjfvYtKByQ55fr1xD+UKeCIi9uw5X9n41CbBEHvRE=;
	b=mOABG1tuj+Ti2KBPj50iVCfRMBNKPmMZSFcq65BDuvQ1K9KnD/ro9+bjQgCvTmah
	9Dp9AgFneNqGl86xvggkfEUbZGlQJLSafq8dD8YRyi8DDV2T2QmpbRw91ec6gWBcKCs
	N+riJcxLMNztb9YKFJxoHFuOMb83ra7K1uu2x0og=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646536284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7WOjfvYtKByQ55fr1xD+UKeCIi9uw5X9n41CbBEHvRE=;
	b=ZYqnVioUhyf9ax7mn0P4wiL5cso39rgUKWR9GfXnXnQRnGQs00lwKciwP4G68S7U
	fuIwVEhqxtADihVFYSMd2fqbC+TxYkBIHzS+l0Sz3n2OoPzOAUtJ6ZxMOTSZb2dFIuM
	ssGVB6rh65h6xGNpZTkNAntKTUi/uI5NGQAGDsXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5d35da4e-f651e34f-599c-4776-878c-46daceba3d15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac624f91d27ada2ea8391d282db8769b308b6654e7e177f84636dcf1e5a46569
Date: Sun, 6 Mar 2022 03:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646536284
