Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0445A2D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 03:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655006159;
	h=To:Subject:From:Message-Id:Date;
	bh=QiMke06EACB/v88KR3rKjLSp3OmnTONI4dpP8FFUUYg=;
	b=AjXGTQ1uPH43Hjktst2KBv5/1nxr54W3TwhrEYPRKnlwxxBKjOVMsEkuIjUVfkZa
	Jh9Oc3dDny2a9YKhDaHe8taCu/mifVomnxcFogI692E7kgASlYyZaUlQUsQllM77QBJ
	qCRtaWy0P0r2Wk88yVvWaFqZbqU+1qugDrXUoXo8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655006159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QiMke06EACB/v88KR3rKjLSp3OmnTONI4dpP8FFUUYg=;
	b=heIrZcfm0Ul4hLClnJAg4ZJLSK4exN4O1YZH+lOt9gAtqkTvZhEyy8mvyQYdBeue
	ILesHkW8d966hepwswDsYd5Y+SpAhOSZYrjeWjZ/lkP8Co7oeTq5d5kP7kXLLKKJo8J
	mYrwU1FoZ/EiJAveHJCh9SDmCOTgR+2U2QLAUEGo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181560de17e-f2cb53a6-2824-454f-be14-2ab2f7fb1685-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22a491b379a6049fdc7970c3c6f37b59769e0c8b2e5bab9d80f674c5a4bda974
Date: Sun, 12 Jun 2022 03:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655006159
