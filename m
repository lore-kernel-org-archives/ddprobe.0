Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95D4E1B69
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644980185;
	h=To:Subject:From:Message-Id:Date;
	bh=TeVedTopn7Yk48wz1auqsIEixrJdU+TGvCxfDXyuM2w=;
	b=k7cn2F+mBdAbHXLviseaR0psXMgTbgWpY17gHGPeRwLwzWL0vhJCb4XxZ4pVD1yd
	X0eUy4q0QLYQygGqtOL28Ais6lzGNNlz6GqcP5DuaYjc88xVIKfmwVh9iLY8Yjr/aw0
	9FuJFLrUwAUJLylN/HzN0F8fF0GmSAyGXVAyZWjY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644980185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TeVedTopn7Yk48wz1auqsIEixrJdU+TGvCxfDXyuM2w=;
	b=SMKaklQskLOEl8CDa8zaidmBuAshERA4p+1TzTO49reKyHXMOVlnz3J1pAVATIg+
	dY6LYEahUxpCcLJlFIt3/9QT6cyDLAEB3Em6ZS8ca1gaXoo3Nye5zX3E1bMtNACmTKX
	uKOQcPQeToTfPxNyjF3C9pgq5U74qBMkxVaOzQAo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0075a6b3-715c571e-a203-407d-a631-9c15c845d5ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fac429f1af1ce81247d53760eb401d4e28551354ec001abe2312b66707f3eafd
Date: Wed, 16 Feb 2022 02:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644980184
