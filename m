Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BF717C3
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFCBC433F2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671066087;
	bh=efp2auE1IuBoxwDVWqBcMvJLOZp/LqOfQss0nbZqq/g=;
	h=To:Subject:From:Date:From;
	b=YbWypMCAuz8TXvk42/dTahiUCC2odVKPqCS2iM9+R2RFOYZIXHBb5/x2GqQIIleCL
	 UKC0qA4bW/zbc+oIkyb2/6Nqx2GZZZETCYo8acAnURn3v8PlYN3C4Rsb+ygZUnk/l+
	 H0cD5kUcBAdGBsvvjG1QLUfLTpHh/y1GCshxMqJQNIqZqs4+Waz5V5IiZGTwEToT5B
	 KKbHVm39DHvgshJfqAXp9RVHinLYtU3jpZFUs50bp1uE0LjCF6DVRL1EAixioxMoY3
	 g81RxWWT41JJTZYuM1ruJjZO1TReqwYHGLYsjXIBisBV5upr0NToQSf2FfKZzE+PNB
	 GMEIfLzIfhy5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AB79C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167106608754.9521.2493835188854304020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f13376ed843733f19f20dfe544c9690169e135f7e30163936560f907abb706b1
Date: Thu, 15 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671066087
