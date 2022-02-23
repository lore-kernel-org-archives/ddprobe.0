Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFAB3800
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 05:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645595185;
	h=To:Subject:From:Message-Id:Date;
	bh=ieYi/lIL6rtwnFW+akZncEAw6sDWHMy0vVI2lWHADRw=;
	b=H9xSoHwBGQCZEDTqLUShtXETxbz/KZ2Z/+UIZh1hnlk9y6v3M31PUSa6qQVeGfY8
	psvksKkY0VJn2oppQiw41eLMJlg4P9O88N34uuMCJrsrXQCiAOTMDJg+2smjqrPQltz
	AmfyE4v5i33ma7Mrv3PcyS8j2H+gGw9KDRcc5D3A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645595185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ieYi/lIL6rtwnFW+akZncEAw6sDWHMy0vVI2lWHADRw=;
	b=La7Fg0H2UNsdnFGzGQoDpj7l7nKVzqxPnIJ3ZvuAUemdLgApUOJi0mNhc9QQToI+
	COSrf7ckczlJAcOBRWaW9z2As8/77anbgh+qLrlJCxuadGt8rG9Wlwi8gJbeQNYiTcY
	5IJWx3EzrA+Rm4fwP8XunbKUOmel3b5ulLNwjTIY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f251dce80-81970e78-0b8c-478e-85b3-fb86e75bb7c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3460beeb7b2a4158782103713621694dc5047b9048bde47bec3efab75b2a5ac6
Date: Wed, 23 Feb 2022 05:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645595184
