Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B118B4296
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647090685;
	h=To:Subject:From:Message-Id:Date;
	bh=XNyCxX0k+StLI/9puDhQDGLA1oQgyxJ3Dj2yHXXrt8w=;
	b=T+ELUvRzR7fXJcUWPtIgxktKbsHrBzOeNj6MlWXJjvymTp5OH0cPSqaa9Oa1NVx3
	VZkAkzl2f8DDx0ykH7ofscZcrmpeA/OOjr/SAFVzaIfH127Ms2QqBCRtYfo76/EvrsC
	HxMwj9Pz+Wezo9ZeaL9Z346GkK5EVvGwq5XsjFEc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647090685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XNyCxX0k+StLI/9puDhQDGLA1oQgyxJ3Dj2yHXXrt8w=;
	b=F4eIamxQL4y8Za5ZFIqfxPpfDoUPUbtPtJNyIkPzzcl5cvLUKn5G3EXGCK0tGp8I
	+0BE0VhJnOJozmtCprzUvGa5MQ7FYs7tgIyW8YQCc/fmrfVvSjCacGfmUpTdKI01I/x
	91SFMuAL5Gcydlz7pctFBpa4PgTZVumQnmRbBnCY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e415364-61e8aa43-25a3-49fd-a658-50846e99eeac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cbeed27fd5e3ad777d54e4b21e9d593ec958bf44fb03a1057e35109afa3a278
Date: Sat, 12 Mar 2022 13:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647090684
