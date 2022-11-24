Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9321928EC
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 682E5C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669307454;
	bh=UtTvKP7BFaS6D3ku31D5CHTAepCMqwJkri0QxAVwmh0=;
	h=To:Subject:From:Date:From;
	b=t0j53/j3sw4ZevDosYGKCdk9V2JmyZeTFLxfLwIZzrQs78sf8uN7X6o7KIWLm6pn8
	 4/LzsacuAS8q3esN8B5iwV5yFf6pzfnFTU+PGnC7f9j+EpTgMijGPy2+XLfm9UxHEM
	 yvUMFjJNSODRv4JXnyBkIS7CBA95u7DjfjTIWw3iEd6LjEecZyFk4b+NnANK1UvgQc
	 ZNjaw5ECC7shp5CIGeLUUKjsO4GNtMiNiuOETMaSiuoMBT4w0Vor0erC6zkhj65ToT
	 uEMjac1rFLUUTZcy730nTCNeAL6KXu9r8bRfRMfD4v2Vekbrah3kyh3YYGZcLCJEHc
	 OiqkN8/tOvjRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51811C4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166930745432.17803.9993074628516190731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4341a1f960331ce3a136e8150504d2c5cc2baff5c5df1cd9b5d1124192901805
Date: Thu, 24 Nov 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669307454
