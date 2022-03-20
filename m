Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643295EB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 23:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647820284;
	h=To:Subject:From:Message-Id:Date;
	bh=QVSh4gjQyhsVCw7pk5qEqqT8uOA04WlwBZUdmBG/ma8=;
	b=UNpMUJaoPTIRoGoeyuJVOPgwMPv324twfu0+cxIlgic/OSWQ1aS8kDHtoEJkHleU
	fg1dXKLJ7i21UOOgn/KqjxCvAg6wowvCCq+9IGv1aHYiElNVGxg1kh9aeoLuZBl/PAl
	OnWz5jmPSBbMiI6Q61HDKNZ2fPyBsrkl6pXueSPg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647820284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QVSh4gjQyhsVCw7pk5qEqqT8uOA04WlwBZUdmBG/ma8=;
	b=UTF+L6NL+VpXvxVH1Dh50ZwzaCTT/BdncP+/oYuMib/MF5dIH3wyvaJH4pG3blCP
	5/G6NafJxH6fdk9TjC6eNgrURW3TUkDptjrDQxKk8RpOaclVb5voFVvCSSFTbP1XahC
	mawcXxWFGIkgRK0KL28uyT2dvJJc4/OHVTUSx4ho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9be2332-991e40a3-9dc0-4e0c-b632-ca5f413f6d0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6dd6d2b76abe0d07e637c6267a7ed8fb6bcbb61ca4e1e74ad868c1af2afae32
Date: Sun, 20 Mar 2022 23:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647820284
