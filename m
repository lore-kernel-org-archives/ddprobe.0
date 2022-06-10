Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF10C362
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 00:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654819919;
	h=To:Subject:From:Message-Id:Date;
	bh=dBHwQue7KIdrjL7PL+f2Zf71DsJM0lT2LERR2bVWNfU=;
	b=TJUg8NPWTMqDPKmonoApgHqMxSk5dhPtDF+KwsxqF/Fx1gulMMmuBumuhlDiJoLI
	X+GdG9mQrNr4GNloik05svhh92oQdfwhbFdm08O49J8OxYYsKUl0ybf/GLYstJMEAPJ
	qmVmZVQ+dR1nRCg+d3mCHahixP8OGgTtkd/pfotQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654819919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dBHwQue7KIdrjL7PL+f2Zf71DsJM0lT2LERR2bVWNfU=;
	b=g8TcxoFQLUHaLuAkCs079IvscMU1nSHA8Rjwv8QQBNl79BbbL6u/YO2CZLnBtY6z
	jb2Md9oSc+Bh5n4kw3GGbHV1787ZTOcTJwVFa1J5iLZmFJMif9z4rb44mXBj49uGW7K
	+8TJ84EKheC+qgDN6gja0Bihyq0ZvtV8PlG6Rufg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814af41593-c6d26eb5-67e5-4de8-9096-aeda6e54ce72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: badd690d70464af36c2c9eedb5fabbccdfcb9af5e79057abeb4c52106efb6981
Date: Fri, 10 Jun 2022 00:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654819919
