Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 731724A83
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645976785;
	h=To:Subject:From:Message-Id:Date;
	bh=A2mxc/GFiEXT/x17vHsJkw0rwRLJAmfpQdhqKT8F1Ls=;
	b=bzhXTHwJDhm82neW0Mpev2/5ZRRWknWhVXHH5JyWp/C+hLsJ4LiFsBCcWQHURX30
	UBMAkYyZYi6p9aVcPPAT8IxCtZeIW0dvonJqGOLjvxqrRX9NJcm2kYTlIvWps5tbWBI
	J6uOvd2pOgEaapFwqW7zaP7EhFxrvi+6zn283pFg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645976785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A2mxc/GFiEXT/x17vHsJkw0rwRLJAmfpQdhqKT8F1Ls=;
	b=SR8dOl70a8rFh75YMDqU6JdVC29YQZocyMU2DOA4++Rr3T1YJjnda7oaqzi7ecY1
	/j2jxkl4Q/DuSoydlcrdRU+AnU36NQKTHdUu6CKBSha2uryEfMhbwAo91le9skw2bPZ
	TKmwPGGDYlQh338oIiqjiJvgcnAYwzpoW7c0jo5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3bdc8f7f-bd8dd0f6-c58a-47c9-a150-58fe72a25423-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c40a5a002f5ac392285ce95b1c111193ead2be6104f009c792afc72c09059e0
Date: Sun, 27 Feb 2022 15:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645976784
