Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34ED7C
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 11:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648813618;
	h=To:Subject:From:Message-Id:Date;
	bh=niCyTCoW0yY3Wdj4O62VNMx3W2tIXje6+8GjEENyHDA=;
	b=CLH2MXiSyzvvxS22UqunnXEohLlZ9cCEfQC2/sL0bxkrl/cQB1RtjGsPxpDeS+u6
	9mVezjQDNC1i50KQVBHBz3mZIWvmxSWBdkK9h3vZHkweujsZKseVUTgRrdo8JrAaHwO
	SLmoV/NfHqbLmQkihtUOK0n5BX9ynCKSg9hRf194=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648813618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=niCyTCoW0yY3Wdj4O62VNMx3W2tIXje6+8GjEENyHDA=;
	b=YMpae0Ot4/p1FZw1hPa6Z5FMFjQTu+9gSdl4wwt6LihftS8bsDead1rV2h2lYJ8D
	nys5si0UtjRYIqImGq3UyuL4TrFcG+0Q3waU2ZlLxAoC8PEDkZ4JHYSEn9+aZIoPFxy
	+gGIBogGcEA8IZE7f9KTI8vZrOlq2fRrlAn3f8Og=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe4f3345f-5cdbdcbc-a7d5-4236-89ae-40ff07c725a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9acbfe12fd1df8f9e3a373616a0f51be9bb48f63be6a5f7edad2350544a22d33
Date: Fri, 1 Apr 2022 11:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648813618
