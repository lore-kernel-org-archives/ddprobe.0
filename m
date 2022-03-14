Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C397E
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 07:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647243084;
	h=To:Subject:From:Message-Id:Date;
	bh=0luP1fp6zvnovrTYzkfB93zx8j+Zmdk9SHAXyhjoEhk=;
	b=Iz7L6oUF06hmO6v5OxiFdEda8DBTrb2FmrOxchdCcIPVDgEMoPrWkETEzRh/MtS1
	8wEvcPV9TZZu3ctDSC8aQoXQPMHMCqq7fm4XW3B8tSzj4iH+h72DMJsej8zh/lHl/ZV
	LDtXxvslQBihok0A9ZA4xkT/+eDi5SE7dEgTGWRs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647243084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0luP1fp6zvnovrTYzkfB93zx8j+Zmdk9SHAXyhjoEhk=;
	b=U5zpJDrfbb9iPUBwS8WVvIn3cq1iGFGS2LJuoVQZ9ixy3X+INuNHl2XkMJLTPG9+
	q7N27X+NiEKnVoM2WkEc7BxDbP+b90C6L7JkmbyB0s9vxyw0Xi2T8PWSbUNiVNIXxCJ
	xt7FzkU7PcEkrHtaQk0uAVZpW2ARx0bsbkO6tZWc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8756c3e3-66b74411-a70c-4ebf-a2b9-d8718d1dec22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35e83f5081d6ef9afac9ee41ac524a37d5ff6f38cb53dea415493ac88fdb4f04
Date: Mon, 14 Mar 2022 07:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647243084
