Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC74A3D
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 884B6C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673760087;
	bh=LWKihq4iaForgFq4kgDo0N1Pa2MaEV3INHYsKKJAIgY=;
	h=To:Subject:From:Date:From;
	b=OHrbhPloCHHz5Z51dakyu6p60lxM/OLDbSTa06WDAZ6HgTthy4XkOFeOVhfdAG2xr
	 iKzjQQc7fmKl2ID72ToY8+eTgnerf8TXrQUXxYzg3dcufZuMfdlTfGvRwsbUIVy6On
	 X5rtwrg/F9IX/5iod7iNio6McVzo4owqSBc1hnpcNYU71bfIk9TbTSJMyDIzdVPpEv
	 lNdph7yMAsVRlbU/itytT5Z4GNxPDbjySngIoxNKqbMeqNChgg/lxxDWwkTXa+jhMj
	 CTtKysUf5xh7PG00Pg+1RhW70UbOiOehhQHgft5BoANY1m3Q8V/u30aMb1Brf99p1x
	 7XVfO557uodYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6300CC67871
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167376008739.4820.13413798527572617537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48981763afe8caa08c4ba3990805d7612a68705f3145fa760b4b8b6a574e92d
Date: Sun, 15 Jan 2023 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673760087
