Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD34F38FF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 20:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645908385;
	h=To:Subject:From:Message-Id:Date;
	bh=czXuHyMEWeTMjlcroOqU+eYNpATzET30JaidSVDixn8=;
	b=jJXTXnJ3rn5JSp25DEXgOIXNua6q63AXlHDEBDo25rTb/NnrrAwzt96Ou84twTFZ
	xei31xqOjz5wsANzm23Fa6hdmzw2saGlQ8dRhoUkK8wJ9zbp8OipmSeDAywF1sNcQn7
	I9vjwTXKHLuzlEhcjOhgV2itqgXvOMPw1a//AWnQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645908385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=czXuHyMEWeTMjlcroOqU+eYNpATzET30JaidSVDixn8=;
	b=AG3yjCV65dEsHUeooUw1jthyGVoB250OsH5ffoZjBZNmShAsrAIzeGy2Pd20Jwit
	FozrIVCesJz60hgqKZx1oZUbYjEBriXDnFnkkz2a/lXyvMZjI1xlRKSdtXLFWNjt1Rk
	MmeaQJ59vEXP3klWIq3D3XfkQEqbt1MpShJPZKqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f37c8dc04-056033d2-0441-4d6b-92c6-ab33dc0c34ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f6ef6a611eec6bf14364ac77ad0dc9b3a3dcd54ca8a02dd994cf700bfea28f8
Date: Sat, 26 Feb 2022 20:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645908384
