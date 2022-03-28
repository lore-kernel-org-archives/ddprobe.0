Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6E917E7
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 23:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648511638;
	h=To:Subject:From:Message-Id:Date;
	bh=ARL0DYI4Z7hMX5yIpLlUJ0jTjmjQ8bfPfTNUU8ok0oM=;
	b=OMDwQbwcoTX39J3gSQpBYWeCEwm2AhDRityCgfGNQPL29T7V+65sKsU5sGHwZCcy
	tzB01GkzVwxu95J0XyY5pPU+fnpnBizsxkwX4mi/UFDZT21kTyXsh1UD0qyY3AsheLs
	K3xTrOc1yP8yajjL0hNuZ+cloiqgrENI+ZHn0FyU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648511638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ARL0DYI4Z7hMX5yIpLlUJ0jTjmjQ8bfPfTNUU8ok0oM=;
	b=gmqBpBN8Kh8U+Laj86fGbfWHqJhY4GsDJrRRruFUG3NXbGdDPhXJ43oHWb8TssVG
	yUzx8QnHaUYPbCCczpPkEZgEPwLRuIqUDdSTbXRFS3ZVkGmTweY45Rue3AvTYLPgIrX
	JFOUpHpNC3ndb5W+9vcJiZsZx9msyY1RVFhZjMAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd2f35afb-273b6338-5e77-4973-adae-dd673845de08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5da5affa37c6c9a8cf55999193967a15b79e97a773f4ec15a5fc058f38c44ba7
Date: Mon, 28 Mar 2022 23:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648511638
