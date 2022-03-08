Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96CD42F35
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 02:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646706384;
	h=To:Subject:From:Message-Id:Date;
	bh=q6KMN7SZjS6ioxvXlk2qp5qzAq5VR8BzeqmArm27iVo=;
	b=I6UwAW9Ds3Nb7jAxwEKzOCUmqBQICTharnianCQONL2ZFtG/JSfz8JfeLJ3o8SmC
	UPsmINoBRiwOhlTJxd4LE94tbuJ78vzNSZq5NG2ng82bJH6kurlfmPzr30ohrQ4csYN
	pCb+6V2hri3swGiUQfI4mOKcYaHCzWLdaLkTIPIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646706384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q6KMN7SZjS6ioxvXlk2qp5qzAq5VR8BzeqmArm27iVo=;
	b=a+lbjltW7VNdjYuGgmUWzETULClMYG+LlspKL9K08qz5Rs1uI3IHtDAHHP+S7bz7
	2SVDiCkzhrgjK/ZpQWOFL+dRik5DpYsoyUO4icJXPp6ssetuW8r2Yr0sCFfbS6jsw+/
	zXwEOrjQC9GSdnsF49SS0Km29q0xMp7dnr8zrMIU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f67595f97-30b1d032-b596-48a0-aa05-0bb897127fc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15170224046fe1eff8e63858a6daa9f01f4fc652be8ad546c0ab6f3e0293aac1
Date: Tue, 8 Mar 2022 02:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646706384
