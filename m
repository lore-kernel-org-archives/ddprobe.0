Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739C05CA1
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 20:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645389085;
	h=To:Subject:From:Message-Id:Date;
	bh=HUW5LIM0yBI4eh+Cd2rcoXKlFvcbZHlTAD8GcZagETE=;
	b=I4k+3w2bz41RROKEjwGZLvtFaSHgt6fERqoUIs3CW8Ndlrs5Bf/JX5x1bG3mIwiX
	ffvrAZc14a/VSxZ+2hMPOIluLN09kP1sV0GzvnhFFKkPhJnlhX1W8K+3vJVgszVQi+z
	k7fRjzP4W7K9LDHvPtZa3D5lBCnLDLyJqImUwEr8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645389085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HUW5LIM0yBI4eh+Cd2rcoXKlFvcbZHlTAD8GcZagETE=;
	b=dvIJLGGbnoLQFmC4S3CJubZijFhYWS/8iYltg6ylyMz70jr3pJz5ZLQne+l91uSM
	wX+tjbzee2NiRMvOI9t2PopmRnWDSrSopaXR95KMP2As+izjLoqQg267Uan7yLHxyfi
	GDyDkc+YDUNVPoy00keW3yx+ilZXlLwsDXOadslo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f18d4f83e-3bd40cb7-3b4b-42a7-902c-3a3ca340feab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f97ab446a1853c635994257191141c7ada7b9d975fb31acf6f969c863fb2b8dc
Date: Sun, 20 Feb 2022 20:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645389084
