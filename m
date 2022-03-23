Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C667C7FC
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648060285;
	h=To:Subject:From:Message-Id:Date;
	bh=ZFzFnrZdHW/1DN3kQWtOgCFsXfXlIVvkabJsgkczmQg=;
	b=VRVSq0MEDzneECWBU8pKZA5Y/UwkrHlrWajW0rCO+YMzbbz4C04SkJ7ka0m0mAfq
	OhZtS+Fx4yunOu18ldSw/MkaHe6nnQOkAccUC6OnwfQUsYFYcpNmDpQ8cIkO9EMWtVA
	GdsdgE+e/UIZQiGbJDPDbyk4BeSONS7SMu8Vjg84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648060285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZFzFnrZdHW/1DN3kQWtOgCFsXfXlIVvkabJsgkczmQg=;
	b=JghRq4qpXjyZGf33fqS6NJzUgEK/0k6VkzKamooTpVfosDytNwgj++BMzUXUGKmH
	tG/Ow2xIG42blokrq/YoFpI9kFj/CEUllWjMS4Xy165vh5wyx4r++qFuo9gCzWrTxw/
	wy9IISz93NAvibJI1Ehy1uKzFXfuo3QkXBeOj3Lk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb80c400b-8615fbad-0930-4b13-93b7-a6d774aaa383-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a013846548ff2009e22fe3c0b3951c34c3b9b9c53cc6e066999368621bf59aa1
Date: Wed, 23 Mar 2022 18:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648060284
