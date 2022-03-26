Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2831F3D61
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 19:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648323058;
	h=To:Subject:From:Message-Id:Date;
	bh=0XAZtXd2Rl/F1VLwhSHNJ1IM8vVEPAOxnDYPO0wBUc0=;
	b=k2+PVkLEt+80jpEYfIht8b8z56uE4scRGINjCr95JobjBSvMnunc8QKtbF1+mpek
	PCLEWhlxu7047I7ySWuM+2CAsbTqd1FNbvJ6ox2H+mUZH/gsAuuiOZNthNkCBO1qsLV
	XaMYoPeNcGMVxgvfip8jJCVdsegFVZGKDGLSWY7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648323058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0XAZtXd2Rl/F1VLwhSHNJ1IM8vVEPAOxnDYPO0wBUc0=;
	b=d8lqHFBCazsMaXkNnWZMqvKsbsn0Ww075Jn3Jkw6DMtCxTiy7jToJqSsOLzknoVv
	QckMuR+3JWFFLRLLB9pPk2C6MUSJqR2RyPnIWI73Uhp/QvMAXtoRMBbdyFtXLbcGvD/
	MhJ7GOk1PFBaOMGt/1uAydfL2gbVoSXCESZeZ9XY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc7b5db18-4d602d0a-4ba1-4c90-8641-cbe7e9e3a050-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04e492d089827182b0604cb7be25a5bcf07eb719211a21968b979bbd123c098c
Date: Sat, 26 Mar 2022 19:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648323058
