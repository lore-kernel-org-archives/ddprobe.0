Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6DF810
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647162085;
	h=To:Subject:From:Message-Id:Date;
	bh=ztj8WfRlffAvMQA6q5Zh32Eelq3xN9BeEC5ZybEGwdU=;
	b=ARDH4rf4qEy7C6HjFRRPXY9nrcusCj0f6twhhRv/gD/a+DuUW9QjsXFzxc/wm1Fo
	1wRnCFgTAWiSRsLg5C9Z8pLBXaB6M4esOnu2ztPoovAKIZ/cXZ3Rcf8lXwZevgEPhEn
	m+W+4HWaeLdQ1xiQO71vZy/Z6MHERuaQQCSAPnA0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647162085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ztj8WfRlffAvMQA6q5Zh32Eelq3xN9BeEC5ZybEGwdU=;
	b=bXFttOWR6QuzZ7HzSPsgQFkY7huO27RgBAsJ4D/tE1k0SKSW8uADc/FNrJaTQhMp
	gmTGhhrwViyTgP94d/nQTOoWywfRk0ZDbjqyqGUKQIrUu4lx9wv3R+m/0SpzEeAwwVV
	mN39UMtncd4V+sJTWSs12b2W6ieakZ4ZXNMej4nQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8282cdd8-b862e654-ae45-4f4b-9de2-8621855c4e96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3744a3db60a886843119e97a8add1101f1fc72dd7a8579bb770f0e9d509eafc8
Date: Sun, 13 Mar 2022 09:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647162084
