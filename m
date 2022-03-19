Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A965A160
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 19:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647719785;
	h=To:Subject:From:Message-Id:Date;
	bh=P0B8zwYfXRdFocsFjceT7UMGDlOd57iSG2DhJ+7JE54=;
	b=BdJNEDv407x6CavV+9KbCeBXxIbEQ/VO0UlTm3+7OtAEUi3ok2lpSExsgvBRFYxX
	zqk4hEgh+CUC7+G1A7hIYVox+Rt9QcPVLRLerTPRYBI5iMhgMahi+zqriJa2rfNQiP3
	Ro4a0YgY2nOx3hvWirfFWC8gspzfhRPXzZOkGsgs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647719785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P0B8zwYfXRdFocsFjceT7UMGDlOd57iSG2DhJ+7JE54=;
	b=a0q1YFFaW06I8aiz/5BVWBXckk0q2qKFmYNUOlBoDmBTgdm4Nd3U3qZVqU1wGjDA
	rkNtJBAWz5iRLrtdAz0DHJ279tTZesNHDDJTRVFMduhWBf5zL1ZvTsxSwz85Mzgz65K
	W2h5J+24Qzzd1qo7t8r29HW7OYs2Vs9FFAumz5ac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3c0a11b-1a6aa5f4-aa37-4333-b247-8c21090f3b84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90a86dd28fc744ea43c9c177ae701911958ac4ce5ccc8aab0dd4d8b4216da392
Date: Sat, 19 Mar 2022 19:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647719784
