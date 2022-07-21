Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D39723BB
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 05:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658380012;
	h=To:Subject:From:Message-Id:Date;
	bh=6c+f08XZyNZa8AvvRQJ/iCy+oVFVr4ALosW0oqz4s+E=;
	b=DNJYHnWRnSFR/Uwh18Ygmcv4bBPw/Cw+eBGtBMN32g9WgtbD4pk/h79+pbMWCd8O
	RgUqV1+wct6CRCOxWtfic6LxvC2xyWexsENgNWklZh6fWCzyuElLhSTSM9v6L7iR9nB
	rdVcKoyLxw15AnoFrUhSIqw3CVEA9IKkbBBQu37g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658380012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6c+f08XZyNZa8AvvRQJ/iCy+oVFVr4ALosW0oqz4s+E=;
	b=YBQ1XjZaCBJb/BtZ8eIp8sTx4vtpuy7bBe+OqV0h3IMLr6v5JxbAj9M8J8CTywYv
	8gtZPcBVxAV7QL3VsTO0k9F8J2KrBaxdNZF8gULlgupu/vzFHAO2kNNoASAdSH7lO3Q
	04yOtCZMqS0FLuBlrXRbrTwsdIcanpJNKmX8NOyg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821f26caeb-5f9c4f8b-fc96-463b-a787-b9089dcefaf5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b01500487bb331456afdab155f1c63f1026e9fc703e81e0514eaf476aaa9dbd
Date: Thu, 21 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658380012
