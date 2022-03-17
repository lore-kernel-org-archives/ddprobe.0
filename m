Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7522F37
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 12:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647520585;
	h=To:Subject:From:Message-Id:Date;
	bh=lwujcl+bQncBEDf1K4LlSV3ZuNEB5NLsLuerZwAjUow=;
	b=YaNjoTcOu4YLC8mAPCPqNTiqS4OjxVWIVEbeGp4e7GR3N23U5XiK1sV+FF88ZzY9
	YkijO6f6Q4cszBjX/XzNENe7MWVuQ5PPm/14vfhBMvn+pbsD+85RTk6Huy9SH1ADwyL
	bngjmEK8jhPN8agwjh2Sgo7XxG7cLl0aCuoqn0ug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647520585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lwujcl+bQncBEDf1K4LlSV3ZuNEB5NLsLuerZwAjUow=;
	b=GAhRVslQCifAla2IRK+AOPQlYBcIWcKspb5E+kYktqH/uKFPsGMk/JwOvg0u012a
	AoUcTZt9Dzbd+iAh18+B+3FQ5co+SkVG+5RodLJSRqbL68rYSScnw4r7KPcIY6SEZhC
	qxOTsXaw4Ws0BFaTBPMNyza+a47eKVomjOOQ7S38=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f97e11425-2370e63e-08ad-45f5-9baa-6cacde6ac5d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8debb5ba868b1e2643aa8bb765f6f059ec0f5670c7ee63183b871d42933163db
Date: Thu, 17 Mar 2022 12:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647520584
