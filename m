Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3635123A2
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 18:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649009578;
	h=To:Subject:From:Message-Id:Date;
	bh=4GhNknbCceBGzWMZYaFhD29QCjf/ferfkzK7a9LTLRE=;
	b=i+xEs8FMrknESlyD4/A/eHkg3Um+Qa7mQnq6zSi1DmUDZTJCwaOSgLb1VI7g03NS
	yHf9m2sWSVHgBHti8dslaufi5wnF5crSLZcmy2+Cv5psXElobfEGrBO+/kzVqMIaAro
	unkCbrCmipnmj13YPkudHqkUS+pstE2jVp1ZD3Cw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649009578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4GhNknbCceBGzWMZYaFhD29QCjf/ferfkzK7a9LTLRE=;
	b=f7GVXwRuz+8sc8RGb2o+VUTq0hIkoLuVPAaVcR8BMtLgVlwd4tRAuGpGUefBmilG
	FlAT6V64Xv2hAC8+CGDDJMGRKPfZQ9xpCFoq1N2SSW6XB1sEomlOXtGeuweZhQFQoMD
	/L7SpzhhypQ8L8ziXRCYAKg1+0Lail1dn6EtJHwM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff0a15127-2e18536d-3aea-48ff-bac6-94d0364fb5a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b610ed69b3a43aafa2f4c67879453f09ee616d342091e649da5691785b403537
Date: Sun, 3 Apr 2022 18:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649009578
