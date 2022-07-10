Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C4B7A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 19:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657482412;
	h=To:Subject:From:Message-Id:Date;
	bh=on0n1jEVaLndjomWV8z3ZmCee46jjmdNw9HC8HMSBig=;
	b=VkIU9CZ/ID6HXerlt176OTKYUTCCx9oJ2XhAkW+G7461mVGInWiB5jFpEllmnSOd
	ZkEZMPyeUxMoaNjpxLQBNpBvAR1iOlH623t8kwI4v3iQOcFGbewFqmdhTbCC1MpZCNF
	38yvsCga/gq8TGLrER+9zBeSAP4eyUlPccTg22IA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657482412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=on0n1jEVaLndjomWV8z3ZmCee46jjmdNw9HC8HMSBig=;
	b=Fh4hmMaKXGtlEijbu1XzVafEv+3Rf3JF/PtUWX7C5vRXna0GBUptHb2P4GZXOKar
	dEgExWiomjnuMVKBiWFGkWNk0/Az1vEOjPh1sgNxd3DyPKVFfXx1EvcMRVYsZhzkmbj
	8hddXIGZPuyzH5KU68ojTFRGNOAwnyjBoVE7Bazo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e9a68141-2474bfc6-d08b-4d30-a226-6f57951dc834-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4a76d8ce2e1c43626f5595520e848ef767d9757d9c2dfd6a910f194df3dbd4a
Date: Sun, 10 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657482412
