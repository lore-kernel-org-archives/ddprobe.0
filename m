Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830A74C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647618984;
	h=To:Subject:From:Message-Id:Date;
	bh=F9mAx2cv36N7CjglTvnFPfXd12Xg4joPn4USM3yLYAw=;
	b=Nvn/XpluFPMmtcs95vVEsy3ZTDuGCK8X8Dix4oCJ9gYcZkQ3YNwdnz1VWczNGF8v
	dRIvcTm2yWCWlbLqwZg+FUO9wghJtxS3kxCE1Ams6Qka7i7q8Tss0H/zPaD/BlZrmV1
	dwt1iRziEGhBtR7CjIFQsZbT4MFHWP5i3yuGaCn8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647618984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F9mAx2cv36N7CjglTvnFPfXd12Xg4joPn4USM3yLYAw=;
	b=Xo4uNhB989DL9H4vmsBrjaDvxqhPaa99L4PXizO7C4eSJbr4nnR/bCCe/MHD/MHL
	QpmVHCrmwdoEDN4cT9cjsz18dgzWikadDscOXpGxpXv7442hXiW8oYJNq4VrnB3rGS5
	PLBwz6HZWYvdNcAARDIpitBz5LSI4pmxOj6jo5Ag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9dbe8b86-305a11a7-d483-4dbe-9dba-86a5fcc02300-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fabd8acf740dd112080455a07e9c0522dda3e4ebd44913337d42bef907654f67
Date: Fri, 18 Mar 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647618984
