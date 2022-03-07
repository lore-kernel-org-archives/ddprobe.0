Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774F128FB
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 01:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646617585;
	h=To:Subject:From:Message-Id:Date;
	bh=C0GgoWY7w1bcT+jD0F1xV/raBhQ8rt0Xt5cPi7cFVGI=;
	b=L5iB1lIiNl0dszasKi28m7Z1deicDxTMf77NySMninVvsvIHlNErMStjjZwDxXKY
	jDaWS5s53FAFWPQkqZ0EWahUB2aNLlU0JjNkgJ40MfA30PQ5J1cZL+XjsOkqmWb7e0q
	AATwJGgcw22un0ywnP9nggF3vVkxqVA3/hW8/VRc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646617585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C0GgoWY7w1bcT+jD0F1xV/raBhQ8rt0Xt5cPi7cFVGI=;
	b=EgAJvwkBMrrDbC8ZmR/Pzyu4PLdcBx5fLn+XFDJ5Cn5pN0K6p3KmQ/hJnht0cmxZ
	+8E5R34isUje90GDOC75Sf4CQxYhPArrjYahaeZNiOmHrQ/MAQbtoRVslQ1WEZWUp7d
	ugxtrmKuFGbKxN2XlRfgFt794VdfTrJT4107/KxQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f620e64cc-7d2d9e21-d83a-4b65-8ecb-1f05001e7faf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0476d7a4a0286c890acf55da3c49ddc612ce4e52248c0e25a7a9e433d731a964
Date: Mon, 7 Mar 2022 01:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646617584
