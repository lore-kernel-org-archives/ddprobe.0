Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1084A46
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647171385;
	h=To:Subject:From:Message-Id:Date;
	bh=uZFEAhNegneClliOsW72YyM5KNEa9BR1Xiw+P5lXDLM=;
	b=DnD3ySkChVvwK3Bb5Gekmjrb2ibJxfST6H/9o55krirI1fe6UTqHl9OYeMDfbRIF
	r3T0Eh8IX/ikjlWU7u79uajgH9GK47W8e/ZAp/19RMLo3sAlmoKgHP49WKe0S10q6Nq
	z6MRDE1k4hckfd6L+6Nsuv7RmCYCMpC7CzfqwRrQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647171385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uZFEAhNegneClliOsW72YyM5KNEa9BR1Xiw+P5lXDLM=;
	b=S9FiGnNUBm79RTBsRTXcCn+hSq/2g1/RzH5c13NAS3hrC131NUI3FXWDnR4DVhDo
	NYryXLCMm3rc5AUMfvps12EpSWwfiDWrP5aR8lr0s8QIHpKGl8XqRQtjtZ6nVZwtA2C
	yKiEjuKtdb85aPU7sfpYu4p8IyT+/wtLdRArU+Fo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8310b5c6-21b18dbd-182a-405c-ac3c-dc94c0a1ec47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b663adb477bc9c51c970496df4cca1befde693de9a7729a6809bbc66e9eb5231
Date: Sun, 13 Mar 2022 11:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647171384
