Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB6C28FB
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 14:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654612679;
	h=To:Subject:From:Message-Id:Date;
	bh=1Cj+Y2IgFwqNp7DoRsjvrZFTH2dP9uAzhGG7vsbMqlk=;
	b=PmV1xtEdYL0EJ+PZwYawhPOcEltnEJscjYDUt9dOHjYShCC9Dsd5fK49UAbWY5Om
	8V3rs+xDD4uliUiqUWw5+MuIgz3atlvXiSvVMDqqyE7YhYl7TeDn+ifdX7+Zf/V92RJ
	/rX7evrls49+9mlhXIMfJqPI5xYAsGEaqaph/1Xg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654612679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Cj+Y2IgFwqNp7DoRsjvrZFTH2dP9uAzhGG7vsbMqlk=;
	b=KPDkhG4k7zcb/+6zUvt6RcB4gZssAza2ierU0t2jks7KgXrQ19VDsask0COENKzl
	seyQwGiAIK5OkvhEaCP4/CC0N3Pd3kJzhekjCjpB5a8Btyibn6lYPknNL0wmaJqbOM3
	7NuDumEoMX3+jtlZFs02ySWPfSrqo1WNJCtgb4nA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813e99daa0-d9f70349-faeb-4532-b373-3f6b4646e741-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd658c5626ffc4fefa8cd434e74b9dc30f7e2483447e307954c011e560cc3ced
Date: Tue, 7 Jun 2022 14:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654612679
