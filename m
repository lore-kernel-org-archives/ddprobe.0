Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9461A802
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 05:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647927684;
	h=To:Subject:From:Message-Id:Date;
	bh=MLgoG0HfpVx1utr73U/IgZdmFWD2cul+i12YvXnb5G8=;
	b=IMan4ZIatGLHZ9YXaznn10D5WHrpAf6t5VWCwVm1VsC5AWvcJ9Tyj9l/Om/ENYIi
	lM4QFppxwxg6d3//Y+r6GYl+fdoxArk75eictJj0RXNFY1kDj3CqdggPSsRe190tSrE
	Fc1qvBU4isoTOsj/2469Wjjm/TSktBMUBLJD55/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647927684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MLgoG0HfpVx1utr73U/IgZdmFWD2cul+i12YvXnb5G8=;
	b=TJ7llVWzTjEVFzFouBIdNx6X1HXZw/+StWCxQjmk2geaGcxXcpx8NOvmfbOIahuR
	GDtCWoudaEiTLlUAUSQqHS990u2X2HzPSIPiDxVeQjLSgHNgF2CXCPlvREUz706q+MP
	xVnlMwAfUqkpJe2+crfWeZmdtzT6GKnrH6nyjG48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb024ee83-61f7418c-083c-4169-9e20-68b7fafd7805-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a6687e8cdad584e2003e029d24339b78302bf66815a9e9d3addfc7dc4f94362
Date: Tue, 22 Mar 2022 05:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647927684
