Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8895A53A4
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646046685;
	h=To:Subject:From:Message-Id:Date;
	bh=4OnIjQUVZKPk0MR0x/g3qMuT5+mGKO46STkYGNI/Bic=;
	b=ajnaSnDppHGr55bYNKTFJG7wtmiPNBTkoyYP0jg2dy7EJi4B6S6nxKfmQ0UPK/Lx
	fnWZhgppA+QPhzwUhb5OXZyymnujYy9EgfD2Tt/jDpw/Xh5d5VYyVpoyLqw1d5IR1r1
	TDspDi2pSzNQdUhqccT7CCjgCULRsQJ4JJaRj3MM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646046685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4OnIjQUVZKPk0MR0x/g3qMuT5+mGKO46STkYGNI/Bic=;
	b=BF/ROHze9Cc4D/0ENU7bWX66ErH5CFE9cv2xJXTGCt4A1C+7mhKL1WMpBL+wOHCl
	C4A62/+hUOXcVQRprV+gh/EM1BTzLwRoUgzf0/tYz/bC7BD9Wg6kea8H727S1HJ1lkl
	bMnRBBEc08ZXYoGWuKH28KuUTZZZKpnUICHdhXyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f40072636-e97abd1a-7794-4a2a-a992-e490e9fb29ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45449e58fff56dcb2c8a8ac01e060e2d44c1a8f6769302db8bca828e8a300a0c
Date: Mon, 28 Feb 2022 11:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646046684
