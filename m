Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DCEE1383
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 18:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651949938;
	h=To:Subject:From:Message-Id:Date;
	bh=dfmWEJXvkRWgnG+WY8ixR6p5Vi9BAwqbwHaE0CRat78=;
	b=jHA3An9PeeBeMLWR9SwJnFb00LOtzNjsImSt3tIq3+YUKweKsSbOQnrE/n7MfA1z
	c8g8twKI0Xt/ZwsNBdtzipCmaSvNiLSFkVxfChFNxF+Zfta2oE5Pf/VTTraTBewVhso
	ZC1rZdkwxNmHswjBNMQdIsktpMOdqZDU8B04aFQI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651949938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dfmWEJXvkRWgnG+WY8ixR6p5Vi9BAwqbwHaE0CRat78=;
	b=iuB85tJebFUCxii1WV3bBlQOfk3DEz/9C4sIcEzl2RdKg+BozXSNmYeOu1EO8WSM
	EV6vmpYsaWhtDccXosPIOrlJEKEWyNUED54qDs8ak6fC9jc/d199rhRNjwC4Y4knFY9
	FXRDGzlTh0r83m0vdGu1ohnjUhAXuJmTkpIUD0h8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809fe3a66c-e9c73c92-650e-469e-a84b-285535ee95e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64e0956fe820a84c4fce45584f5b28e7f9654291581de74dba5920fe865a0d78
Date: Sat, 7 May 2022 18:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651949938
