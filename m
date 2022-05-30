Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDEA29A8
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 12:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653915419;
	h=To:Subject:From:Message-Id:Date;
	bh=zCNkyOepK/IQbaP7kPcVmwd2PEvzwxADeQKXZRnERak=;
	b=NorApcEOrD0MyqbqDPA9OJX7mkLPmC54AVM5ybt7FWFxEoZHyJTruP/mHFC9HkvU
	Car+jsqChlV0wD5WEx+Ch+/YfNHv0O2/zA+8S1dGeSHNefweLElsiFtFM6QGOr6ijcS
	Jl+4y1okMruzrCNS/Ze83b/8rvvdXcU0KR/AesLE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653915419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zCNkyOepK/IQbaP7kPcVmwd2PEvzwxADeQKXZRnERak=;
	b=Azp5xtpjYChQXsngegE2QPNw1uE3u7lrUiCDQc2YgwQiDvncA/MXZvQQBy2Zfafp
	kvON+npbpSAFHFQjfC4Bwqw6Fwzk3mlj1cAxs4hmqN8J8YCv2q/sDyYVUnNYFbBRlrY
	aJ7pkJVk1zqVZ6+NeFnrZYFU+CfJFz9IWGPhvYRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181150a829a-794f8093-c30e-417f-bb44-05ac5dc179a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 469e37280d70f9f17bd1b5f71060f9d29a84d8dd43ae0932df3af128cddc807b
Date: Mon, 30 May 2022 12:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653915419
