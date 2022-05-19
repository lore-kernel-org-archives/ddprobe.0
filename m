Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1806528EE
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 15:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652975699;
	h=To:Subject:From:Message-Id:Date;
	bh=iXEeziNEMVW34WhH8dGc0E06LelhHyveVcHBkDp4AaU=;
	b=Jo6OU03AtU3T3NxvdWackE3grqJ80lKdAIo+wU/B4e/GDmCLafOV9mJ6ynL9lBSp
	3csZNU/CVNNBXJfYCaRYFgZyhOuXp7l0P53OdtsYiXHUKYaYEsyMEy7MbDcMJxATNvK
	f7D9+umtpCpCUGKCDQw5JMA2rdi/4tx0yNKMRx4E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652975699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iXEeziNEMVW34WhH8dGc0E06LelhHyveVcHBkDp4AaU=;
	b=XytDO1e0jwRkbeTEYSYNGNO/Zb7uu0fBRoDzDQV/3a7PeIzjjlwSAFlfHtMtmewB
	OfJ2C4i3v8HCwJ05wF6eGCqQETVc0NqDJK4NysF0HGnG0CQ5ptOPTBd4vKDi/nyF9Vc
	9L+fJ/EOrz3/6lvzX3j7EciAb4C154fdIjByoHjM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dd078551-bf3af8b7-b268-46cd-93ab-56be6eec9336-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e6034f341d506e23031f0ba8c1b2e492c6aa8ae17957aae6ce7897ddb745bcd
Date: Thu, 19 May 2022 15:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652975699
