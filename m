Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E8F36A
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 925A8C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672020087;
	bh=P2rRBy2E5gWcwkJq6BHCGs/9g+0zVA7s2+CeHbEdSaU=;
	h=To:Subject:From:Date:From;
	b=h8oIrUvU4L+7MQQrlUXy39ZTFXptbU1JbKAdM2aKiObn/ZoVnpwyQyIcUuGTqIHRc
	 QxoWdlAoY8d/+QGzIn696r2Q7X33Vu9iU+qTux6YWwlRChUHxvlt/j9ICwODu4m3kG
	 fz7T8zcteywffigkz1Z2vaatDzaiMkr1nZW/hGuMDMtPXK3uAYSAMley+Uki0SW0Da
	 BVj7heRkT+AMWaZrKK0f1+offmIQY9ygGgAMhsV/8Sd0Vcrk3eKPGnDwX9nTlgeeMB
	 Nws9/N6JvwV5WpLtJd2BzKOdIm88dOBRmNiEIRPZht7PLKoeDHkO7QHdjklzbixYp9
	 2Pc2hfjtoWWCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BC37C3DA7A
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167202008742.22369.7158535017908502378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c135c536f77a1f8fd2ee404527b39ef25a5ec38555a48d918f54a8ad254f28ed
Date: Mon, 26 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672020087
