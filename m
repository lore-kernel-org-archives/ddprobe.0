Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABE710EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646587584;
	h=To:Subject:From:Message-Id:Date;
	bh=PduMgdzY3JwaJtrGSQX8oze/Mg+ZecJHiq8w7r6rgGI=;
	b=S2noqFCEEPQfJLbITD6+ctoeRrW2xrhCTcJy1XEfYh5gFzAKTExhcn69KpqQREme
	siImSqZM6gee6RCJUQarFp1r99CpuOg8FzIaXwWGYfFoIQdYlGBCGGwWfmMuny/XZA7
	cIk3ldVS2o9sBaO8wShFf5K94MdHCTx0iqn1oXik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646587584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PduMgdzY3JwaJtrGSQX8oze/Mg+ZecJHiq8w7r6rgGI=;
	b=Ql97Wm9DdEACgsKONMFd3xx/xMjc3RpmSA6XJ9DKU55f8DZavOY1+OQsscZ64xQm
	KVDlNQYqfsz7fESzSpDaCFdusa3a9lLrvYLdP7hvvI2+/eGzUS/YJjhaFXBadpvMnvB
	pkKeo5LCLYlF3AE6H33vaX4fnvsRAgxFZ5JNRwLk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6044a0f0-cffc7969-6128-4535-9485-b96fd2eeb770-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8404069d2077e91d817eed57c2aec70753773059c36d4f330af3d1552d28a9de
Date: Sun, 6 Mar 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646587584
