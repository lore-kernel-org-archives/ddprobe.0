Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93237E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 12:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650888118;
	h=To:Subject:From:Message-Id:Date;
	bh=QdyHIJiCTJ1Txli7dOKOgSN9C0Eo5UkHQtqdHSzoOgA=;
	b=ChVgfmefVEPBpgJaUzVDguYuaHvevtcJfZIdCgB+0f1oHC4rPQ3Rnx6WEM+k0AlO
	MPV/kW5O0qHGEAuL0vwT1zykQslJKQcWkyh0rSbL5ZiDx+v36O0IM6ky27QYpytV8Pk
	DiVfu5kGGekw7FLEgfErtBzusHQO8f7aZX1hojbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650888118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QdyHIJiCTJ1Txli7dOKOgSN9C0Eo5UkHQtqdHSzoOgA=;
	b=CSC3ErJd6Pyqej7xOxf8/4FoBn+z+fWGDyeg98xsgkch7+rWx6UGIeaJQH97uG9M
	GVYqGeCdto6dEk5vXWtSN5nn8bp92kvJj2ZxQQgq6N2cOC+T9WEaZXIyqFn9cC9kAiS
	wTEanAIpzYVo6JBtzBUNBAlRemCD9b1BVa7QUzfU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806099901f-a319f86c-00bc-4e4b-ab51-6afcad036c67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53418cfa5b4475353dac3c788899837c53f44065b25c26a64e8ec7b77b991e25
Date: Mon, 25 Apr 2022 12:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650888118
