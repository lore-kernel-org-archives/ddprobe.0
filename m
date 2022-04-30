Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650A41853
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 11:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651319938;
	h=To:Subject:From:Message-Id:Date;
	bh=cCWSKod5Azqo3k3soMM+2v0uJtlZCjascdyKy8EV0Go=;
	b=Z8GKzQxXyU6E6QHkD4pwMFf/0GQyVxl3x4Xv+SaOnmAgHnEl3dt9R6jfk5Niapdc
	Z0YrdSnpw3ZKAR//rOPouZfSNHKTsXbUCEsaERkTGWgApy3dLv0Npga+nU0ch3b+OQA
	qtLwtTYJoz+zr/AJkzAAQ9DnV/Ja0Udw2qnK5ufA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651319938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cCWSKod5Azqo3k3soMM+2v0uJtlZCjascdyKy8EV0Go=;
	b=WmZfa7WstgPpVp63oidA3nsGTREeXQiJeRHA8NKVrnKlG04KEhLy9vGIe7vFaag0
	ElkvXLydAstX9S1Ia+Qv+cuj1tWpHbMHl0CbIMmFIU8kwmQlqDUonseq5sNcgjrx6z2
	Wmmq0uYeW4KW9ZnTrn9ZxgZkx2aAw9dOKJ78eWy4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807a569cf5-78dc83a7-283c-4deb-91c5-611a3df1e604-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62dfcdd6b15d4aa3bbe038f417ad1ba3f3fe82e68541417dd47fc7509fdbca4b
Date: Sat, 30 Apr 2022 11:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651319938
