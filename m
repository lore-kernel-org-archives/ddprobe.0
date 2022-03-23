Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6387A28
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648045884;
	h=To:Subject:From:Message-Id:Date;
	bh=o4XH8j9OodCA5GsxHJDVWO/ftiiaDMcaSBc3c9WUB1U=;
	b=ZzG8wEeLAWFfkD5UXee2S8/NwgepD24ELFY9mxG/TWnH+se15GqYn3H3hX40rM6w
	bTjwn1XaDXHtpMAnAc+JZvvCWiYZxtNP/xxk0mCcxcUrVVpcL85cYW90yGzVrst7dET
	LBJ8gGAqKVTZtyqKbLD4M7+JgTpfxPcM0/BNFvJQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648045884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o4XH8j9OodCA5GsxHJDVWO/ftiiaDMcaSBc3c9WUB1U=;
	b=DJxIjdlTBY6gqKaRgLdDpe/cjcAOz97H4lv38zOhhqHRHkhDr6Dfn6TxfLianpYm
	LC4rxQXKSjCeyPAVAZPwnL1QSCanXE8ttf5X1yuwJ1Hp85uxYWNHK0rd2vTKXZ0kW2c
	dBG4mFQ3j6RVlNj7oT/7lUljqoMdJ9r/JrWOC7oM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb730855a-34f68476-6034-44ec-a43c-884e071339ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 064e8111adc9b976891da3be65a4cb5a67c0c535998b85d2c8e738690c4df682
Date: Wed, 23 Mar 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648045884
