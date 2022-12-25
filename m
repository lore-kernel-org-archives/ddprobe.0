Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F4F63A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A9A3C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671955887;
	bh=l7aMLD9ipLpcBC5BFUlyYghwGi2ii2b/O3XY/I7qtTI=;
	h=To:Subject:From:Date:From;
	b=e0zAKgQI4ugzbQqMuoFokrWU3NHjmQXNlYDjitWQpsMvwbSNfCIqdw4Fk+OSpNs11
	 h0AP5DzRVscQGusS6icrmOVFNrMblZ3bwyYx+38Ay7D7aj+8KWuCUwtRK+VQ+6yFJF
	 MrqrgAxs2+LZLKjkTgkXO43GFXj2wBlst7OEHrVS7m4YXjD6uZnYe0EfhaCtF9B7Tm
	 P9EXXSZPt6E1rvbvtvWE/AmzKQVq3/JUyu2AetBnmeEEwKMNwdcN2+hs6R8kpyrWMr
	 JL2B6jjfEnQKBsrT8Q6bxrR1unIDdY7bKIH1thnoHCMOvM8ufVYyMiBcqxbpKv+Fi/
	 63UrKa9JW/LhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CFEBC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167195588741.24620.1985389414489558931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba7c8c8dd99c1462c5fa6020b148527cb88b54b43478618bb54ae1e7fc17b74
Date: Sun, 25 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671955887
