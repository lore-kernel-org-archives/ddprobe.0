Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5027A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 02:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646878285;
	h=To:Subject:From:Message-Id:Date;
	bh=ro5NtUCb+ZBnqIFLsg65UUabnYJBDvFJrzxCPRNEK3s=;
	b=PDlHwia5PwjtKxVh4ngb2inJK7fvxaOlRAO2ISMqQPQuHo3OoYbB6LqMDvTCP/E4
	8VO/1rZ27c34DhfvGz9UsSfhgRWSC6jFzbmN09OHce+vAQEnoyvGRpnucmUsmKha7uN
	aeXNrJotgxdnKxd0GmJjA87PgaMM/mFQw+X3m3gk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646878285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ro5NtUCb+ZBnqIFLsg65UUabnYJBDvFJrzxCPRNEK3s=;
	b=Me0btZ1rYndU5P6e6FQ3oUAwahyHysBLp7ffqAyleNEYVrZv+chn9IjoijSlY76F
	LiEJ253npZnkVjfI95xbWXAMve2VoSZjvKUs8oAqsqhK2ixpipniQPH68ES8MtIjyed
	ggakAF47opbVYSR9U27ne9Ed4k8SYnMT6VtyLNxY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f71985bca-6a80c830-2561-4df0-aca8-1be762f01428-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7259a171943e3d50d86be748ff25c21027e594c4ec2c2ba3b6913e66570c6458
Date: Thu, 10 Mar 2022 02:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646878284
