Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7045A7A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647053784;
	h=To:Subject:From:Message-Id:Date;
	bh=h2liGCU3ZPOY9oUJgP2YErTKo7NZdkKwmDe+6uFwF80=;
	b=VHWpHtbs3QPk5s/zcJH0bXEUdJ/wJZzSr8WsXNdvHoeFDgBZyYDDRxM75bU4SNM1
	pISQnE0b+50sKKjlRdPgTjdQBe0Kfaoe3XboVXfqtI8hBx+0cTvkHkKOSMkUgCFMdW7
	ZvrZrB3OlIt1VPHUR1WQRlciHUnm7sNFZm7KRLps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647053784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h2liGCU3ZPOY9oUJgP2YErTKo7NZdkKwmDe+6uFwF80=;
	b=BmRt9c6J9ZF+XaOV1yrrpS/LF1aSSIf/lQeflpc4IkAbHGGCnNamne5TfJ7g7RTj
	5D5VIz0CqUcYAx4mVf/04cIr3ovN6ouMOYC3WtcUeqrQ3MgFIiaziii1Gt+8sriTeKQ
	EB+O+WReQcOOjOSdbnc6EB8u7tR+SWC/3REL+fhs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c0e469b-b25ca21b-c48b-47f4-b9d8-1162ba74587a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f2fe68036cfb4a26074166aa3d30bbf245623aae75fcf17d70d6d4b7e75905e
Date: Sat, 12 Mar 2022 02:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647053784
