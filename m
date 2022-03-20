Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA9327B
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 05:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647755785;
	h=To:Subject:From:Message-Id:Date;
	bh=j2gDApnnQvlhcgEIfwDkcaRof4TffOblPfN/+XN0bSc=;
	b=NF4BZO5WdezBT4q5lCYPdkrR4kdt19uzyfXyQpKENXwoz7wRtT0NojJ/fnnxEtnZ
	NNMuzqrhaOTJPQ5ZgVYLLeeChTFD6E35tlgjG+vvBo7pNAlPm/FDA41SBXD4uKMW4Y5
	u0pCEIiHJgIP9xoMoq7Crgz6jfe/9awZr1Bt/ClQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647755785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j2gDApnnQvlhcgEIfwDkcaRof4TffOblPfN/+XN0bSc=;
	b=ksdPhyb6v9ARAqOveSvLheZvLVrq9bPzlf9pAVhAnTzpNI7WldC864cQtHQI2pDd
	owdKxDIHwsZPd7nb/5jc0/Sa5pWhvJA2oQQqnRUjIsdFOgY3H/DziIOeZy/k9xh0CWq
	2cpWQcEwkvh2LwzjzIxSf7sIdHqQp6ywFo76mFoE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa5e5f22d-23c3dc73-55bc-42a9-810d-bcae3fb82e53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4364ac55115cb251f2828cc10cf36748f6eff60c04dc14128a5af24efdbe85ef
Date: Sun, 20 Mar 2022 05:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647755784
