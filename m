Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3907B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 09:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651052638;
	h=To:Subject:From:Message-Id:Date;
	bh=Q+EBlFig6ZqYsFBP0q+KBwX6nl5YeMBo88LqWEoIIIo=;
	b=EvVOMV5wTFx7iJjpCoH6q6anrBX59t0D0lDiqX5umJdI0of9W8URePGtlAIQTrgp
	oifNs1khzX5WyhP0XsHfyGFXHdnwX+I3snCLbXdcszPvUhgEAGR0ClNuWdt7HMqEAA5
	GOt//nekJoDwD5sOGufGijIAktlW6qC4v8jKiJIQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651052638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q+EBlFig6ZqYsFBP0q+KBwX6nl5YeMBo88LqWEoIIIo=;
	b=k4m0W7BXK3fXXw6T/bWmTl0uDF/zSmZTA1YZ7iEEO686rvsBFsplrGzpuJFR3HAN
	TFAAu7tvmmchWNUd8bSYb6B8GFV405rkuNGrPjG67PbJgWRIruU26PE8vVLcM5ArXD8
	MwL7ck2fI4dXZmPH45TqWkAZ8Lfg4qUMjV+iL4S4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806a67f059-d68b9779-8107-44ee-8428-91ac2a6a055d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42a5dcf3065fa6ae26feb8090d42fb01fceb446ab53cdc2c0bd85551b9d2a726
Date: Wed, 27 Apr 2022 09:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651052638
