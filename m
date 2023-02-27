Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A1428E1
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 20:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2802C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 20:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677530765;
	bh=ZYT0UHL1zINUa3m263GjsHjnDBG9Gjp3u7xUImTrHzU=;
	h=To:Subject:From:Date:From;
	b=gis/cKK1LRyfM99Le7HjUB1dehtXOUAzoCN0zGFO50JhTB1BM8NXIyGHtmMe9sW3k
	 QWLC0TlsVVlE4F0tVuLocBA0BS6/SeQbrmMrkwhAmgj3WWuuv5x/J5qSymVMzIYjs6
	 1S8rxId+ivd758qVa/DkQC7dZZZZzcIWCmKYgx+J7lPeHcXUw/5PCGbvaxLe6aciaj
	 M4T/hqGnF9D9DKRGhO/RZSZ2X6af5DARrWyPHxXCuSCN0ti3gUd7h5Jj3D/Ts6D4BI
	 toOpP8OEQCkVAFeBXXl7Ncbv9FcPUMnPZSxEhMw7rmwFGjIq8lW1VsJId3iJUHj5cZ
	 hv/XlYME95Wvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D6AC64ED8
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 20:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167753076577.20514.13319131416801286284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86083f7b81a031af0d247169e212adb99389995d44b693d2ebc08c4a59da700
Date: Mon, 27 Feb 2023 20:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677530765
