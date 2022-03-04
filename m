Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D1B87C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646424384;
	h=To:Subject:From:Message-Id:Date;
	bh=cTq34b73o9hRK4B/IgrjyjZ1u+39TZU/8+KuzA5UCB8=;
	b=Dqcc3aRPctYrj0rT3xuhDbClo/eq6T4HE2A9w5elH9URyR9Ye8e0iDWImxaVKMAL
	IhKy6XuxGb8ycJ/pksBhLpWt3eFu/ai18qb6rM8rMkvIyskvPlh6qt5P96uuomuNjBq
	h7JwWph7iiWTjE9hTi7H+e6AUdS5v75yyhMfUXU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646424384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cTq34b73o9hRK4B/IgrjyjZ1u+39TZU/8+KuzA5UCB8=;
	b=g4kO0RYbHrcA2zUSmwXRJXqAIdA1SpMyTohF9T6TJ9rZmY1hot/AMxIWkghH4DQD
	iAwhUaRHtrQWkiHj+7gIux6WF4VFZy7Az3hZn/NliSY3vMaomgAtOaidZ03pbhhdKxq
	VPuzrouf3dRx6la1PisnmtwiNmQAajtfiTxCRIe0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f568a6527-b6c40d2b-8a98-4993-9317-27c6b02dd577-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 586619ece53f8e575c3d85380441367e7f7d774d55d2432bdcc653b597d2675f
Date: Fri, 4 Mar 2022 20:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646424384
