Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084D47F5
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 10:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651057138;
	h=To:Subject:From:Message-Id:Date;
	bh=o9FEgEamjFavVAZYAgR3IZzD1waaipYNfLIjF4ETbyQ=;
	b=GY0iY1tZyt2600Z+W6WFcUbjEQqBsQa0AyEOtnF8wHkxg2+D2XrPqnqqB36g/Mhj
	oLhDV+RCWnpw3nOKKGIxCDV9uw0k+dLa8pH1U9/KzrG9p77KX3MJHu/3zIBXJbih4iw
	vAH/3+C6JLOKnt5t82zgrTkLOcWKNjmz0WvN2Ttw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651057138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o9FEgEamjFavVAZYAgR3IZzD1waaipYNfLIjF4ETbyQ=;
	b=AUbOzB4Nft/g9K7wlys/JjsGXwA6ScXRcIuVTwQz3LIaLppeNIXXD/H7hKX0kmXq
	SVEdO9/cUI2A5gcfXndbSeSrdxctH+1iUFV3nPjvukILAvWYEcXO4QCPR/D05ovzZSZ
	KeWxXLEfpX9lgm6bLHNzf0qcHF2m+ugEGxtJr5Ms=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806aac9a58-5dd337f6-89d8-4a86-91b4-1dc8c350d835-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b252a486f79a902c11aa923035577105b0db87c0984e59b0fc7150e34808250
Date: Wed, 27 Apr 2022 10:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651057138
