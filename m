Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787D1A3B
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661236852;
	h=To:Subject:From:Message-Id:Date;
	bh=u2BcUGXEXGPV4ZhumhYNYDkcWeLWVYQUIM1nBokB+ZY=;
	b=XhjVskt/3ogEKl5FE0rTEkUlr6it7zp2OnNU+rTjPqrQZxbG6FPOizdM+8MVZzgQ
	tOhBswb7Hf1glr3F82PxNf1XvoiAWaymydukgePXMAwqx7sPd7fSOGdkc4bJ94FJ0K/
	mpIQrrZRPr/VNEH6P14bQ5QUubXS1rVfo+nX6aLg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661236852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u2BcUGXEXGPV4ZhumhYNYDkcWeLWVYQUIM1nBokB+ZY=;
	b=gcdfLUGCLMf0vcYWHaklRsj/rseg6aXILXlu52lwZ2++T2Z92P6Pwz0uiPdxuZ9k
	Rco8CPxwcHyJqj4Rzwa2GmwqfT6i/hiKXNBUTVp1X3GhAn+xKMROS7Kl34hcvDCPzZv
	PAV/oM9H5jY4pZD3FXhYf5MAe+5rWI7zAlD8uXPw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c96eb741-1a1c2bc0-c3d6-44f8-a4f7-3a506ef56f15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f418c3cf4bea446588200e54c7d57ff6cdc272b24c2a8ccb656de1768872782f
Date: Tue, 23 Aug 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661236852
