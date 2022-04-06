Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DB433D7
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 14:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649255338;
	h=To:Subject:From:Message-Id:Date;
	bh=HayX/XuoIt8kslkm4tWNuTXLOlQ0h0KMeQHkYf6Fdwc=;
	b=PvTDx8sEm56N3dxSOCK+OjkT5Xipm+Eliqj6N1HS7Q4KKK83mFqHFataZhqljI/U
	MLXjaoHdXsmysQSxQH5X8SL9xYr7lwMKHVJpdBxD7k8ZpqBYOX2LV9OTxRAE4JRaEb3
	Z/Ygq6cHx2sp67E2d2hq+iU+Ku0DSmwxTx0Tfy80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649255338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HayX/XuoIt8kslkm4tWNuTXLOlQ0h0KMeQHkYf6Fdwc=;
	b=DjglIUsjRe6KeeNCy+zTlaZTE6r4cI8PLu9tlFoQ21O3Hx6WMBiwJk0SnZCPcKP5
	DqYVHVbhKfXYkpJd7HZiYwr7CYU0PqqActheUiYY12Kb62/MT1ZMN11wUtnaz86q++P
	V8F7WjVOw99S00JxAieT5moUV7mmUKVJCg5TGhGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fff47515d-9ad1af73-dbca-4abe-b7ea-b304edb5c0ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b42462cb55c2136f0c2ac798b7c5f899a85ebbcbae79b793f67f90458321624e
Date: Wed, 6 Apr 2022 14:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649255338
