Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03DE17A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 16:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650212698;
	h=To:Subject:From:Message-Id:Date;
	bh=kukkVIVw7aFgW5jJ26bZ1SCIpHfBEs/3Rgxc2S8zRJw=;
	b=GtmbBAtQV8HESE8wgZYm3HPwyM+71NNz7SYIRAL7sGFgXrIWpZxQ2qR0Gcyu3sOm
	2wzcdot75H1pLzEgAdwaskZlZ10imGDjgwuptD8OoKEAHw0OMwBZWjp1hezGERV1AMY
	OhQkjvSiduxBsaSo2y/u92MihsPCq8h8xaX+27AM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650212698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kukkVIVw7aFgW5jJ26bZ1SCIpHfBEs/3Rgxc2S8zRJw=;
	b=il+L/jcYsAQRIKuByHNhDLV3kXFwCaLVlfCOsJ/49oUk+Kb5bkMS7XUqomKtg0G1
	+A6m+kKJaZXsoNB3om3mbPypr8V34g96gTjCCWvlHOsXyvD32KHk+OxKOjFMZJkhQdm
	x1KDnNouw7Xa7URNXMR75nZz8/HUML1kCf4mQ3/w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180385778cf-4f579d77-2651-4a17-9803-3f530d33af90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31da6bbdb4441ee2f6df64995f6c67d40eb88e7a31a58f64386e29ec3465b205
Date: Sun, 17 Apr 2022 16:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650212698
