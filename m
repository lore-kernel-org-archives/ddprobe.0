Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01751FA6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EECCC433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667643654;
	bh=G6ITJ1Cj1zkC3R+UgSuY+6OQT7YVUvV4f5y2Eoqfmvo=;
	h=To:Subject:From:Date:From;
	b=Zt/ZZvXgyo51KYi4y3A6ggo9+Np69VGAoBkdH259TVQL64IvH4BRnoLgs5HrwgfOQ
	 PVy0pku3jEEvx1q2XGyGEt5DAzWds7Lx4rfcJAS8iI9YqxzZWmatdRV4qDYT7aPg3Y
	 PtnfNf0sVGpEo/MXij587ArnGM4xfcrkHF5u4NuSl1uDSj3J0FByLeAGVKcdbs5ouC
	 kJYfVk44oIcA5DleRRpjX9zRLROBXuye+TIq0g03AWJviJsxIpmHuPZycYudMJOI7W
	 5Zeey2fCA4ZJ5gXnWSzeRluXIAdrdruAhSaHc6WWIvdXUQoVCXGmS11BytH/qUjB/U
	 YEDNYBWwHCGDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51DF9C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166764365431.14854.16726770346524544248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41e0ecbdcd1ab5597c089c89b4c98e353625ed7e49f99d8cffba4ed4ba3d9a4
Date: Sat, 05 Nov 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667643654
