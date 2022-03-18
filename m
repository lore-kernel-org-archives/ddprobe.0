Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C958F48D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647605185;
	h=To:Subject:From:Message-Id:Date;
	bh=pVitETFCMaFstsOrdOeBFs7zP24zK8hJMQNvH4ovk3k=;
	b=hDi5UcAOn9W2ZIQ0R8hB/oIL8x1ujmA60A2E48DM/Jnu4Zc9ZVmPTaVdsyiJbuAa
	IuVE9dYXL4ikZObbUjCKVRrfRlJy/oGOkAqCaj9OVuw3KbAn7dvhkVrAhQq4AMLdF63
	Xc7A7hV5+/o28P6lcBxHTGBR2bstfPKMz7BmhhWY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647605185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pVitETFCMaFstsOrdOeBFs7zP24zK8hJMQNvH4ovk3k=;
	b=HmQ+N4A6iMjvKyjZnbI0rr8yCLJTdmoRzl4GIUF4KxjYQ9OA+OntSdfEbOQHX+mz
	mBfOo4/hQd6nHgohrOJvJyIyztqo6tymGy/68ZLgfg8uzeCtoaq0joSxwMNkcRsgYrk
	DQj7M9vad/bOTDXJoZ0JgBowginXHHWrsFl+tDjU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9cebf8e0-9895ff72-b00c-48b7-9469-b322c0b0d6e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b060fcdefd74adf0e4677ff17a9ca2238b5a8a94ddfc72d1014f6f257004a4f8
Date: Fri, 18 Mar 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647605184
