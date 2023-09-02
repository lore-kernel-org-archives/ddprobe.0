Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FB1315C1
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 04:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D70C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 04:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693629248;
	bh=+SxGQDRjIxq9U34TqbeThJ/h1NdNQLywpmJiQYSmEWE=;
	h=To:Subject:From:Date:From;
	b=EhGO/PD4n+H3ztMKZidoXJ6phIVOao6KZFvpWeUrPkMiH3C/kHEDaEOC4GuN5DJTo
	 k2aximt6sGa77govdT6z8vXphgqtUdhAFm6vY7fO0jeM7Liw7vZuI6tFIf6DcjuFNV
	 tHN4S3S7UizwM5yVM9W/XDx8LIMLYPah7XJ3NPH2cTIe/N7z+PbT771YpiAN52/GhO
	 o78BKtLhQr3mH2v14TZa7A7sSggj5BNCGbA+pw6TItePgBIicV2morlvR3rT7gOsPg
	 ZYtZ0u+7BAOgRFXUnQJ9Ki8xhj4NcxE8ISkWUezMdl9T1Du5Bvm89pf5ygvYWW7egZ
	 iC2chcL5JyUsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDBACA0FFC
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 04:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169362924876.22324.13411361424259918210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8bbaa77978d3f3b4958ba9a1ed4f49726512db93b70860d9d43496350caba5
Date: Sat, 02 Sep 2023 04:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693629248
