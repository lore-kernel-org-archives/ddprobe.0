Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB0F7B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 05:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651124038;
	h=To:Subject:From:Message-Id:Date;
	bh=qk7SslhSJWXP+5Y2DC4GRoknl7hAi2VGAcH1Y/QQmg8=;
	b=Kue4wyzDWS9VVWmCEH2cUmEPZxLDwwucSiqNPEvQFX1aO+NZ3EJZSEocJLe8ZJQ/
	cDS4mBZ36qmJ9cITyEGmPPIJYj0si2+qEBfBd7GMGP+r/9EWSVlz0WBcraU/KI3o7gr
	ViMsuaTYyEAuDy3Y3J2cGG9ZEuRZ4zIZBx5Gs/bw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651124038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qk7SslhSJWXP+5Y2DC4GRoknl7hAi2VGAcH1Y/QQmg8=;
	b=O1yw64hRPTJDrVBvzDy7PdA9LQFLzGooQlfx19ElDmQTHJYjOG32cZLvAynD/xBI
	Y49OL9hfYCBKXsSrzjtNbOBK4wabkLuf2fnrFuxnpdsYffiwMmI6l7tH8aiviJ1Qy8B
	leNPkxPba/SFrGT5XMdykXU/p7uarjXEAMpCo6EQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806ea96a77-053aa638-4e88-4888-8ce2-3c05a5eff971-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16c2a87f66dcfb9e1007848386e04a0d326af902fb0aa63a124c4c24afdd1cbd
Date: Thu, 28 Apr 2022 05:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651124038
