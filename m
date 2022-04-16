Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035407B
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 14:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650120958;
	h=To:Subject:From:Message-Id:Date;
	bh=bBZ/j61/ejVyzekWAyYpv9Z4rUzrtIM1wWP3eAe/bps=;
	b=d2vWBvRUAVAd2FrGwJMhKY5rg+Gp+if8fzTxqS9cyc1vo8yHtYKIKh55nuxDaRx2
	JnOaeDvrbPoxuy9K2frjwCnYF5djjo1txTa1m4vLavs7vL4toittfONLfm3hjzeoO/E
	xBCiam3Etj5BgoqFIjUMSUMaC10V01ZR2KlPdktQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650120958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bBZ/j61/ejVyzekWAyYpv9Z4rUzrtIM1wWP3eAe/bps=;
	b=Y8S8ccztlw0cvHABd4X/l9tX3HMBZL1IA5FQnDbAswjWuE8Ko5ta17BmPkQwYTs1
	/0mOX1KevL70BhNaWaV+i1WQ7sySn44saw+HjgJOoqcD8YorSRktLTpis7DYDmnR8iF
	SOX5QJVPlVK9k++G+0VQGvxOMa7lYBd+ah8/Ksvg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018032dfa110-0b4ec08f-a9bf-45f0-bed5-cddca66f5a76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7454e414b34db97656a0aa72d8d5b108e19c2536f38950212bbb6356d8c821d7
Date: Sat, 16 Apr 2022 14:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650120958
