Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0722917E6
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 07:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650007318;
	h=To:Subject:From:Message-Id:Date;
	bh=dSbBrrghBDfJCGqxSZ9kKazf4jABlEFzFqAcdYLMJAs=;
	b=VRZLXAfHQN04piibO0fK3vkUwIh8qOGBzRRZmRMuT7PWZJ+oLFeV/neiQlvd2SAx
	vQ+3q83lqeVp06Rsy07vz8psiYD1bhmmUxex3IxZ28ybe025gpL87Fgpvi5lSPkDUBz
	xg52ndjO7bD2O+7FbDuzMHrEJJv3Wdp0/Prl0KnQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650007318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dSbBrrghBDfJCGqxSZ9kKazf4jABlEFzFqAcdYLMJAs=;
	b=GIDQt5cRyGOjzpVltMyUZ7s8YqRxrQFLul3sGS8XJlg65Cb0NhlkJFEPeZNk9jPY
	g4WVbCdnBjeGUywFp+YBBgIZgQjx73tfD+0tm8Shq4nE8wA9693gZTJSIy1eQ330ErD
	LzGHq4ra7Xe5O0bN5fSJHpCZs3GciSVYoTWrwmVY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802c199ef4-89037d65-8c39-416c-b090-8f60a0348716-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ebf2a498f03406878df5f9f2d8b54b819c275a9c7e8ef988d026a506bb8859c
Date: Fri, 15 Apr 2022 07:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650007318
