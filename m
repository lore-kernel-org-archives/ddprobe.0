Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADF27A
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 05:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652592179;
	h=To:Subject:From:Message-Id:Date;
	bh=whS1tqT856cVkcq+7A2UCLuJkh7/TG80DzNY7kN3TUE=;
	b=fjlpVz3z8pCdtvd3h4KW+9sHrwKYSTtCRHW4CoYEdJI3Fu3oAB/ZHaOhdsss+R6W
	C+1Xhz3q/Hr+uKlPYkRpFjzbBOhwTYKPPlMYZluXvsL161oQ1A63kFoB63c/z/7GHkW
	BSb1a9481Es5ajgjCDndh6fSWi22DrEgqUi/C+oc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652592179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=whS1tqT856cVkcq+7A2UCLuJkh7/TG80DzNY7kN3TUE=;
	b=MeuDUeNEjaj0pXFauJtSmD4PHwi9Iwx27PAoNGq8UIcM8wjmDCI4GfoR2eHRjzFf
	DBvXUPcZvLtVRbV4l0JlpfzlC9cao61drY59WDiDtfrJ4JON6A5gSeeTmnwyv1mg8UC
	nFQbpLdPTAal7UAwMgBcbYWzEsmIG+3hhMrH6ZJg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c62b78b7-75ca7f1c-6b87-4c3f-808a-97bc76b72d26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd18872acf0de762cf3e2c871c653b26f63b73ae20d65c169a5c8f4c2ccc74df
Date: Sun, 15 May 2022 05:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652592179
