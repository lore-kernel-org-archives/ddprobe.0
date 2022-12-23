Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5CD5A48A
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE5FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671817887;
	bh=qmLqUK2XB3SJ7RfT3i9Rpy87ZgVUs/NKBNRURY88MMA=;
	h=To:Subject:From:Date:From;
	b=AhlAlG6kgPZ/WJWDSzKwqlhFh8/nC9Jj13G8UT1GdeLUsO1Jrkj4tSBAmOP6kZxtJ
	 dgsq0/CNf7DZ5geTGECbyAgJxoaB2OpctdhCzxj45ZKmtfWvvbVm9MnNPCEgWyS0RC
	 M9MaleVIv8a58x4VkQK5ufUenmPY8XfdMcQ1LowTjpcijWrH56nMqQU4i4dIa6NBqY
	 WxFWPZ8wwgfmYh41Xfk/GXCjQIqTxKWSDstSerjFP1Uh8GBLe0qF8uPhIZDgqkJP3s
	 WA0ESh1RuEw2lMVQ4VrJ5MOj1J3Txngr2Zy1zCDh9Xz3NCZ6rjc5s/iWbh/ECTyhWj
	 +/HpejK/MxYxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63824C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167181788739.20984.1072247744841735355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1247066cef6c587a534b7f69ef2605b326cec5d534fc8bd718f6349f7d26eaa1
Date: Fri, 23 Dec 2022 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671817887
