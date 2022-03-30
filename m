Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BD07B
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 16:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648656058;
	h=To:Subject:From:Message-Id:Date;
	bh=CuX7OC8Erh+mx3mxGrTqZ5UG+dAS9gr4m6PWcNtgut4=;
	b=hdXUT32Riq6i6wcTfaoHBMN2gNKv6LA/WBXiaoE9wMmSzgWR724Zc3vapt4Zxk/J
	skc/ts/OstdXw70BGK0ejP2sYdezEv8i8gUWePE+TWarfaOEywSNswouzczI7OWsyCa
	KETpB1klOCxjCi+QEHic62UKXkwD9DemHXXAiiVE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648656058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CuX7OC8Erh+mx3mxGrTqZ5UG+dAS9gr4m6PWcNtgut4=;
	b=KT+mX39s/j6K8IeWwEzRykbvXpNg/lW5dskAvBZUc89SFpd1VdVdUbOQnGi9CGNj
	ZeuycQI1CMQIvWLaMpVfiuiIbKLFPrX/cKSSgsuKzfj9p1T0KKtHQWatnjZ91Y1stD4
	KQ1+RfjusI3Ihkym/q9CXlRSJxLjDLPhyoG+soPk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdb8f07ac-436d2c8a-f8ca-47f6-893d-4edfd688264e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f9ba4e48b1eda9770c850941b2429fc1f275a36c440aeba73eec17a71cf59d0
Date: Wed, 30 Mar 2022 16:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648656058
