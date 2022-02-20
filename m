Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21477B
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 15:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645369885;
	h=To:Subject:From:Message-Id:Date;
	bh=Ckf6b2eIG2ofLysuxhdbnFqFkm5w1HHgNS0PnjqT+cs=;
	b=VjogcfSHrhZSHrlUhvYCE8QGROj0xO2ug2wxmpI1nEbE+OCKI9MRpcj3zh8W/vyc
	tfepHjcZNq7k6Jt+OgICMgMiz6B8ux0ePTAoPpDWZ3WmdpyX1e9hXUtLHjn2Otzg45U
	KXrofEKit6KGvDJaC5s8m54/6O0/y9LWrrMnQ4Rk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645369885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ckf6b2eIG2ofLysuxhdbnFqFkm5w1HHgNS0PnjqT+cs=;
	b=K8habwgFzc9KSyw+dMUYs0hFHxdiI6lmX/VkRqIZnYgeBOerZnEG1f3jvd1JeXM8
	74FDfzUYTgiCe45X/Qy74GZS63fAZBAlLZRFudqZhTyzKzOzNLx4bZu/7h++xCzRBqG
	aWaaD4jOTHfg3Ij2zmuFmv/cKNP+D7JatYhSCDkQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f17b0006a-87e79b89-6759-440e-8140-21ede6f62fe7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbb3eb84a2b6179d710677c913361a420e01052d3b933d683bebe0527bfbf4d5
Date: Sun, 20 Feb 2022 15:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645369884
