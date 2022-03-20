Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4F73FE6
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647795385;
	h=To:Subject:From:Message-Id:Date;
	bh=/jEHAnbALOQ+RWPHH/qWt6EbbuHYFJrlndSgcXdkk7E=;
	b=T8RWCNemJIkPUQ1nT9wRzV+iAdcOiJS+mMHwYYJKMu8CjyPM5cZBvJfcaUTUFuM8
	Nc2i7/3ZGSXyIJSv4X80eojDCxpHkbX0ByB4Q+RPkH1Oi/v/SUn6Ndqozl0nzs8ip7W
	cPk259bGzM5EZkqTOTq9WTGGOh4vycqxS6qB09B8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647795385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/jEHAnbALOQ+RWPHH/qWt6EbbuHYFJrlndSgcXdkk7E=;
	b=kBH0yoNIuTmDSNv4WfiRm2WbCpVW55WdXwuw+pLFMkBDKPGIc3R7hzi2REiipzq2
	rHEXiRh66+hzcDv4WcA0ksO7kuoRktk6g3ajuhanQNWMzgdooFhxdx48Bn6eAJCWKcB
	JzFnVSh6okhLgjTeNElBGfQoNLZPV6y/2WyVnjho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa84231a1-87296fc2-d167-4c7a-8909-a5b7c5bf79c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2534efff072a61f7d4fad569a5243191f8fe9ed17d32e147707471b04d5ea494
Date: Sun, 20 Mar 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647795384
