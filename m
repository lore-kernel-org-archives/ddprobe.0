Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4295217DB
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 03:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E49C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 03:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679628605;
	bh=OQQTq09KQ0xzSgER9MezDeWlRJWof0vn6Bujkdpk6Dc=;
	h=To:Subject:From:Date:From;
	b=bksTeZDT1JOcAiIhHTqd+21uPif129qYNYZuwPmo6ctIQ7ykI2JP7dOznmm5A06xI
	 4mDaM3ZlmCZeCSstaxB58IPv4tHSZqajOXLbSHfx0lch5lxlZc+64O34XHgMeFOHHW
	 EToycpYLZpwZaoUVDbvcqVyKF1KoYXYRsdW4sulv2TA/pbyELib/vf/5jk0CMrEJtc
	 w94Fr241aIUSGt1zo3xxutIsS418VN/8OC0geMTQSltMjUkhzbFh84MidqLsreZUd+
	 zwTjVW5WfqO8z433qvlJwnzTPxN4QJAkLEe/LPE8J5rdax+f8oATMCUJzQUhEFSbFT
	 +RLD/nh2pmo8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70D3C6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 03:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167962860580.16313.9353051590543570836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59479208b67eb3e5183f9841bf111139c6bd715c058034bb040423dd675885a7
Date: Fri, 24 Mar 2023 03:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679628605
