Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF98B10E6
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 21:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649624638;
	h=To:Subject:From:Message-Id:Date;
	bh=2v2RkOLt4GD2Q55oPfmn/i6rg6WtTgexS3APRQTUP3U=;
	b=Vb3PGGgLzD2sQuPyjAZey0rGvD/huf4yB7NIuufI7a65NjTNThGxkgQ70BnmMjfZ
	7T3Bez+vLTMKtfS4Urodzpe0mx8m2IUozujhcBMR3LSsF4M9WC/Q3V0VWpzudM0o2It
	AgXe9qhpA1Lmm9dHKGo1WKxER8LseGJCgDy25H0w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649624638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2v2RkOLt4GD2Q55oPfmn/i6rg6WtTgexS3APRQTUP3U=;
	b=CmPziv1Q+G7jOLE4tKVq5zHrPZc+Jn8e3mdgTXBzqc1zVi9Jo4hE7gUeFvaj6axC
	VCUxVToUHCoeN6yihXNFFSgdpa1aZBAhwfE34Bn7MK1t6eFjUktgPusYH04oTNUzanQ
	T7lyajF+dMrwoKt+sFkpcbKxpO6gHTVXNYPdwLtQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180154a631b-d8847d5f-3cca-4957-ba43-b325685ec07a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8d2080026eb4289ffe791e99abd7d4d4925a55d5fbd2f709f5459ca5283b827
Date: Sun, 10 Apr 2022 21:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649624638
