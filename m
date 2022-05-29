Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F232D28FA
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 15:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653837659;
	h=To:Subject:From:Message-Id:Date;
	bh=TT0HWJ5P5Ti4nWPOupIjTnanAwizPs+y8rngP7mA3lw=;
	b=GUhDzrBxIy+E/QMKa6PtgruQjXZavLuXPpp8PLCVPll4KxYe4Yns8B9oQEpUm5de
	bWnWd4nm4qjxSqYIdUgY7vWvMB3QVQaE8dbkFuu2oUOrJzdqmviQvfvQHI3VuoPBQ9w
	WeRBcGHR6brAoURcutxY0NkTGmTEZG25odNWzrP0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653837659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TT0HWJ5P5Ti4nWPOupIjTnanAwizPs+y8rngP7mA3lw=;
	b=dN//YBmM9vpnbcAJSoYg7irNy+tFHg1Y+9iLLzer5z4/bImZcApC07iSC6CdlLo0
	n1LZrvae/c6zHJtUGUhnLrxcczTulTWCaYUVjIKVUmA56eRuhMWsVI0/GWfjg6Wys17
	xG4N8C34r5Ld39DmbViBapH5E4SL6It7W1uHJchE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811067fc6f-4ce31bac-43ef-4ee5-9c88-980e849d3ebd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db06b9a668ee1db7fc65ac08c310aa210c0cb8ff3317bc2aafaae8239b5642af
Date: Sun, 29 May 2022 15:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653837659
