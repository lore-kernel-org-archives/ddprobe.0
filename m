Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5BA87A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 21:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650662758;
	h=To:Subject:From:Message-Id:Date;
	bh=5XymobqaCtop+cr2Lx6jIwP9HxcLvUCpdfE+m/k4vu4=;
	b=PZmkCBpzuZ8UprntFlFw6oxXlG+R7wnL72GduDImBHkrBrPPqrfOQgO5ZCeHrhxy
	pYKFWobeZvSzkOOxkpveHOuWK4apLtnv3Ji2mLBRgHY3vVdW1GJMegDIl6K/mXydTan
	ZeoboBS/YKAeuWBIfuG3tZY9pS7jEgAN32xvJ00U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650662758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5XymobqaCtop+cr2Lx6jIwP9HxcLvUCpdfE+m/k4vu4=;
	b=et1bhQNCBB3J6R2TrRtA8xtOdNcaTHN1DsT0ENznovukmo8vQr9GCIEiFSoLOllJ
	7e4jHsdhiR6QGXvs8HqhG3+Z32+Hj+SKxsxAjFnzCfemCspZtWDomZqrw+ziz3YrkUX
	+Mvm+I3IC2mhGtqsHNA6CwRkvRWXG7ZQrcPwBCQw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180532ad77b-acab715c-295d-44f1-91fa-24b4800633a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11d41cfd3342cdd6ecdd8f6bca63011261127bb3e66bfbcfe8c5bf757c0e95f3
Date: Fri, 22 Apr 2022 21:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650662758
