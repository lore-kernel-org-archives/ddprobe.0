Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF127C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 03:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655175659;
	h=To:Subject:From:Message-Id:Date;
	bh=Ja3EoQi3XxkjVkswDWzdG4sxeNQtkkGlgPVHs6KkfRU=;
	b=geQS8QLF0HuHwueRdscBYpG+uG+TVtgR9wAPK+KvGDW2zTFscMIpciCmzY+M4CLH
	rHtabR44YozVtg9ZzPAsM68ybFVuPxJQSWtFzTbJ4j91bS12ixTCDhCMyveF+z53jxX
	pwYIhBUZGN21SXaCkxze6xXMToyqFhs3pzEOdaos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655175659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ja3EoQi3XxkjVkswDWzdG4sxeNQtkkGlgPVHs6KkfRU=;
	b=Zexc7Ox3ARwRojc6+nzH3acikcQMIDScShvNkjbrN/HQDsC3MvPOjoiYA178dFDo
	8DyZvZm4MWtQT3WZWz4edRFFMwzr6Y/Q3MQEoRWUj0MLmfot7caccxYHTmQWSO7O9ws
	kM2uwWTkE25j3Easbd4WdZi5oojSR8vjaMGvdIbw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018160283efa-b38b61c0-58bc-4126-8787-b9018d7bb6ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17c4b47b1fa6182610178560edd20fb5dfc339bc9e15c6a35c86f70c6e4a0f18
Date: Tue, 14 Jun 2022 03:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655175659
