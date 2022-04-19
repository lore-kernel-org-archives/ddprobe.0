Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6995CECA
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 09:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650358978;
	h=To:Subject:From:Message-Id:Date;
	bh=EEnNlYnGwBdB655blycQ/wuAGONfqkmd4eF8INBDGrQ=;
	b=h4eWtk2mwG+JDt9PSgFX2EJgd7o0weiG1WokAucac+lxlamNkIjiHgfHrYA0N/xK
	muMinxavhZJveSAQs7s3rulJ9skW12xdB+Ap35WeOvGJAOzdXyOp09GNNmou+f9KH+N
	fdddkLrM1yW4HkXIEYL1r2yo7+om4R1PGYEx1Vlw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650358978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EEnNlYnGwBdB655blycQ/wuAGONfqkmd4eF8INBDGrQ=;
	b=BQAQdIlIGPdqA6isM9WddckUsxbSxKxdEEtPkSnPbdc55va0pLShY4EetN8BirP1
	gCrpheUNhyQW48MNmFJT8NFtxBsMH7l5r/iCq9DCeqRrw6vLwkh2VFNLzPo1PfrlJqt
	U9asiF4PeKtbcwpS2WR8JPjRfgBq664Zuw27fd8E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180410f870d-a33b4e25-cb6c-4ca5-b3bb-49c1e258f42e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b5b88f5537767692a6580712a348bf177a889a3426400cfcc3189bf74ead5ee
Date: Tue, 19 Apr 2022 09:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650358978
