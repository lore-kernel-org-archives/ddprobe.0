Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E554E748C
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 23:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658359012;
	h=To:Subject:From:Message-Id:Date;
	bh=bP783kcUaDqkHhaEAFRU1zN4Y/1DiUlkMz7+hzO6aas=;
	b=cXae/lCldJ5//W47T/1Xug0WLuoqnjYkcdBRPxvOwYA8OqAu5iIqvfDweg/4IqGl
	MfbWZkDfPxlAd45fG0eZVBFjrU1u+utwj/8MGHzMSZEry816R+tvE0M0cWbNpLg4ks4
	kx8sj/jXI/mIbVTb/gdViCWfg8Ke3dcseNLwtkVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658359012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bP783kcUaDqkHhaEAFRU1zN4Y/1DiUlkMz7+hzO6aas=;
	b=Z3LJx4pOwHg8PVLWtU7CsZhADVodZrY1qn4sXCEf2mOYIEGQHW1Ii8vADimyKV3J
	ahKqft3ZKD4JSP5IGdF21lejAv+aq6JIWRwz12lFrTmBtqOSnTxn9DqG2czpX+IK08R
	dEuCa9s0f0A0gb9HjwsHxLDUj/DRwkfno7t6qbM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821de65ba7-3b804435-6c1a-4693-8b28-85e520011cb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b4c9f25c5e2ad2c70199aa172d9b3bfc7b011b4428e12c5bf3d0dfe8460071b
Date: Wed, 20 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658359012
