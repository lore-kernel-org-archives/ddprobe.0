Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B937B
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 16:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645373184;
	h=To:Subject:From:Message-Id:Date;
	bh=thbZrTmkVXPzrNopvuzN6LKEOYdVAOtnf+8BPgymGy8=;
	b=lyZYWAyCi17Z6pW2hWKt4dS/3vHmHD6x9AMSJ+JMzCaV9iOEWZ8HLz1icoSUna03
	hr5NP3893vFtS3PQ3CYOmDriV9jnH1ofyZeZH7jf1+cJF3mrNyfzbnS8tvnahDnmHz+
	PkxY9f+Xne+D1dKIJgVpdWh1fCNBsV2ZCEmtal6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645373184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=thbZrTmkVXPzrNopvuzN6LKEOYdVAOtnf+8BPgymGy8=;
	b=L/FIohvXCc2KECIbbx7Q5VhjfiTb+mi803so5YzRFW8t4FBwM2Q6MBwLUBY6BTPw
	92zsqAJhFClDeJx8z30Dxb+OW8rZxwHcmGTow9NGNWPydvcE+JNjeH5EkNLblcYOPzH
	tkARHR2WA5N9HiZAnDlqzWrWcfmsE0d/GKhbyaYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f17e25aff-af307dbd-6bbd-41e9-9dbd-ebddbe367780-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbf37b3e7bb7500188b9ab7dc00252661e06708fe252eee91bca08aa8249cacd
Date: Sun, 20 Feb 2022 16:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645373184
