Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CACDA15AC
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73370C433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667787054;
	bh=Rqz7JEbgQhX9YTBL4DH4vipcyf4oxInoL4zJPqxW6Y4=;
	h=To:Subject:From:Date:From;
	b=NO0F1WOcnDufahPM5oaL3IDNQfeBViIOvk//qQiEUqBOEyj05PmOfxsBDa+R5lYG/
	 Lw/ivA2CQ8EORonXs6ZrCEW4v87BM7F1ZOJrDNBCv3EMLvLXbT1czkp7x5GfXjCkux
	 HO7qU5hNeZOeKQgQ4EfEYfOXtG5Vz2L50Z+QkqQeB9I97G2kUpqcx8Ehk8BE9mfhKM
	 +930+qttTviDZnI+EJfky5N41wUdgHWIPU4vvyhuDFbOJfxIFCRritK+FzWNe4Szqz
	 uyBtVYCJUUigNTRN9xi6DXWtbNylIdCnZc4YCzbhZ71/ZvBJMbny5rczIZ4XML68GT
	 V0ZiWNi8GsKfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558A8C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166778705434.7844.17867288669820301354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ec0b9f558196828f73efaced5be89120db0273e7f349258aad1bbcc7ad74fb
Date: Mon, 07 Nov 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667787054
