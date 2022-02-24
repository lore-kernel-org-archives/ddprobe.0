Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D4131360
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 04:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645675285;
	h=To:Subject:From:Message-Id:Date;
	bh=ikq5qrcGkq2sCsGEuZFpyOS7iz+ex8p6wiTXG03y9VY=;
	b=HI8QalSFX6dx7zp6pQ3J2PifuGQN5aO/ugjqhLBYXIbGnoZrTyiGQ462tgAZewEK
	M4yk6SdP+Er/J6Cws+QxTYuFXcDnSD+hc9Hg/w30zbRd+DNLntMMCI1aJsXtZhmepea
	qIYEd5vXUnzE1RF8q7evt/yN5UezjmN2pRujdstw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645675285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ikq5qrcGkq2sCsGEuZFpyOS7iz+ex8p6wiTXG03y9VY=;
	b=Ltmeh+HIuPk1NKq4H+0Naqzvik7RuTwqWmqXrP72+bTlcjYr3ENbBim8JLXvFsLN
	ZrT1yagMu3mzm6J49R94SxCFx3CQvOF1aSEyBiQpdmq0+BCzdl5FrIrmcU/r4+Y15Jp
	YgxVowGqEmGkP0cahsq8bXamtWpvKElYVP3dDtw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f29e408ed-82977d75-8458-4272-9bcf-ae00e0fc4d4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ecefe75d29e85615e1df549c60e77e0d2f096b16d4ba06b3d093f06e1463c66
Date: Thu, 24 Feb 2022 04:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645675284
