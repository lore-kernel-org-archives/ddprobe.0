Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278706FC5
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 13:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E16C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 13:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678196345;
	bh=eoyTQBgpqTvGWnHs75MZ+/b/qOFZsWyWxV0Z+xOydww=;
	h=To:Subject:From:Date:From;
	b=ignwVNhP8a0u+6QSuwyHJBFMZsawVEXyag6gxoAgmI1INldddbME/KMiLH/Zm3wjt
	 ya04mytSyz7Rd9u+1hRL6OlCykK4TCMR5ER0i6ThzdbRacAlEQ8sTWLXo5KsLwBjqE
	 WS/5QKbc9mHiPn8ah9+jhPLFkedyD9Jg+o38VB5AqpSDe42Kljbac1cgeKsec27ICr
	 zIH2UwT/89YlF07LlDTP3uY8NpKJ0AXlVy93iy7Yl5ZSIJ8J19KVyWczI7CzMY2yFO
	 xMXvRqeOuz0C1UPCjvkLyzMnkKMTr44smSECU7UMjbf7eDneHA3Wjwa1RUyiGuVfI8
	 +wdGSvLJsP97A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E8AC678D4
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 13:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167819634574.6948.8918191325423066764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471790143287b164f01c9810160aa407ba6007d52a175be1f14bed96f5cf8e67
Date: Tue, 07 Mar 2023 13:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678196345
