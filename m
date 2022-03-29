Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB16420FF
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 07:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648537618;
	h=To:Subject:From:Message-Id:Date;
	bh=X2npYSbpAPlP+iYPXMdxVAF+MnSvPpcoWR9ImlyS4mY=;
	b=jX6E1ql09sNe1un8ApKuq4RyDhvZh7TBC/1cU+y1gUkxbWvR4ue5I6xKJblMJX0h
	9cjPcJ1YsbB4klwneaNrdDhNBXdBaim5J22+S8zWvcOYncu3JZMwP32z5iQzozi90oa
	HRNVXCGQUfV3QBvwVhd2g+VkxhYnLVZmesNjEpTI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648537618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X2npYSbpAPlP+iYPXMdxVAF+MnSvPpcoWR9ImlyS4mY=;
	b=TnKUkf3WXaASCQIWh3zNAgKlRCeXR7dLR4EwT+A/fkSQDGqNuTen8nIMIqRXs7Il
	/FdOrkjhS7JZhfBhhTJ8Y4dXcoKrqyMPOWxVAlmyiCtLLpw1J6+xUfLHCkTs7bkvxqf
	cRFIeZ8nLCEgBCqFN0j9DunfthnZL1YwIgRdW1yQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd47fc733-a52c3c72-3cd4-45d2-960a-e3a795c05f44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ee5b3896ac15cd4409cb43991fdb6a6cf63e744756ba59e32447e4e34434253
Date: Tue, 29 Mar 2022 07:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648537618
