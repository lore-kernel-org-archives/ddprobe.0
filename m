Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6BC7A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 19:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644693646;
	h=To:Subject:From:Message-Id:Date;
	bh=E7VGirh07Kaexwk6KdePHIljOqtB74kw3YIzzmC6LHI=;
	b=Tr5gv2qFvd8wWnnE1ky1turtDXCev2vhL5tSJQDIh24Jq2Eu0e9cMMLRSr+bfegZ
	nPi2iVj/qSOi2A6PbD7N40aJdd8qnu8ewc9ZRFz248rez4tkj3ZonIRJ/3AO/phH6r9
	W2Ohc22OyFSe5doAUFZMBzHie+xkfM11GOAyHhpo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644693646;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E7VGirh07Kaexwk6KdePHIljOqtB74kw3YIzzmC6LHI=;
	b=ACX0HrxS3+xwU2EJV2MphB84VoqmZRHfBlGRJ8yCdIAIp6WUOad4+9b++AaNgAJZ
	++M56HtSl06jHL+lQtA/J6rEcoz+S9Z165xTzwhn4ioYiqlmKbp1uii8eZytmtXlSZw
	sGCgXpUkUXdWLvaqeSJJhLvh+Ka+dGIIgKJ4VvXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eef616c0d-d6c2685d-7f04-47fb-b906-2ef6e7cf8141-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff85def1f384ccf131aadae6ae55947fa5a5c7efba76e20f2f3e04139442bab7
Date: Sat, 12 Feb 2022 19:20:46 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644693646
