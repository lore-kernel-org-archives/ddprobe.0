Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E49A11FCD
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 18:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650564838;
	h=To:Subject:From:Message-Id:Date;
	bh=/P17IthQewwziqxDTGlE3cZfe5sQ1Dq7r6XMCyZJEdA=;
	b=AgldN9M0XGWfqNujTTtxW8dTcyrgCukmqS/dZO9T7fpcef0xc9d7NDn9A/USsE5v
	CCAF/wE9W2MlawHWmDXe8J7/M2EwiXApYExV4dA1XWzh0K10wdRvEJYfh1WdeuIj+VW
	rkTcJu5ryfKR3bL8AQUMkP/wC3OKfK7utwTXcyp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650564838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/P17IthQewwziqxDTGlE3cZfe5sQ1Dq7r6XMCyZJEdA=;
	b=Zh6gvatcEC+ZctAlsx5nUOn7KEHeB6XkeBOJmTj69f0Oay0G6HvJEsUZW4Sa8anJ
	wjHwYTKx+TzdLQCz2bweuaRAKUoaVahQODxeIGm6Mn8Eud+1j1JIfTUkf9r/LpIOEXw
	Il8/axg6wiIqHEOlFD7X4+ufOnrtsJZbjHFsKzi0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804d54b357-32943d8f-6739-4d05-a639-eab1c1fde317-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1affab691dd62453e10933e1f3db831f8534270741b6a999254b12b6d1d6eb2e
Date: Thu, 21 Apr 2022 18:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650564838
