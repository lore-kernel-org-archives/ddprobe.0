Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EFB81849
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645005384;
	h=To:Subject:From:Message-Id:Date;
	bh=bdxRYBmpLkSpu+gs+Dr5IURIW5AsloNb2p1XNX66Tus=;
	b=Gp9EyCV+xHskzoJBZVmOHzIIcP8OK7u+vMt06TvePzmAbvGITZN26dqmSTG/07IQ
	/+NBSmcowa1VoqUZXH+UfrGOBCxp0iSFW7lhnL5E5P88BA1ZNo+++Svan5lnlSg+jJm
	smBoskXT77xGkdUaNrqXB6hRW2cAIMq9O23QWFvE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645005384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bdxRYBmpLkSpu+gs+Dr5IURIW5AsloNb2p1XNX66Tus=;
	b=RluFzTRqMDX4c4fg7419G3DAKYMbC4ykEMPyAEKfm9L7C/ZJFc3PW8ZlOnRdVeSA
	yUt3l6uMca5wBWtbjET02TstsAZrg9Y/xp1Fd8J7sRLiaeIbbWkMs6msS0G6Tb1Vft+
	rg0neGX02OCc9TecOhhBJdXWMyEQ5jvAJfecnOfk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f01f62c34-93159c6a-8fdb-4b10-bb5a-400fcd15d4ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0a858bdbbf87b4f9547694da4f188bf968a302e4c463246894d11b755033116
Date: Wed, 16 Feb 2022 09:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645005384
