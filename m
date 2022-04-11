Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB49B10EA
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 00:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649638438;
	h=To:Subject:From:Message-Id:Date;
	bh=xWDV2fKwf5fCw5NX1rrF2BRUbIzqvCRcJCUwC9dikQE=;
	b=Mt4NOxYAZBOqu9tKvxK9XqelqIoNe59cPH5eowyuWkX0nJOSLc8/tOo/mKu7HI56
	39T52MLP/0Uw39XhZHYZzq2IQb8Tm0znRwRWz6+MD5RUmyXA05IxQ0X3TPGgAiz08lz
	5x+JmcltJu8tB+DZJxDJsE/PHxbScjK4xGwpXsyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649638438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xWDV2fKwf5fCw5NX1rrF2BRUbIzqvCRcJCUwC9dikQE=;
	b=SwcR+eMT5kpnS8ws+z5DAoUHpZzVsdI09+5wGzZEasqbnxS3AyrbLlAFgAiVnNgM
	yZR8/thb31tfDvrysZ/1RiTbnl0ztv1TDXgUgaRDGALJojeufiYUv0HM/jZat7h4eLR
	XNFk1MVRHrbZR1oCLsojpx99VIP3bfIdmoPrDhxo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180161cf58c-b358bab1-1575-4e68-b061-91cd95850588-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 240c1d83d647f750bf6fc36e7257508ff41a7174ccd25e21b01eaa46577ec21d
Date: Mon, 11 Apr 2022 00:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649638438
