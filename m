Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D69631
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 04:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3079C433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 04:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682051825;
	bh=/bHom2Xw6Gn9EL3LdMEOs0lPFSiLIkiwtH5kW2l27JY=;
	h=To:Subject:From:Date:From;
	b=F+phRoqYY61/Ap7TrmMxjx67ZxGktaMnFXIedBa+7CR+O/0D3nEvak0+7u+gPnW8x
	 gl05sPxmZ9amCdrO8XrIDXF3tfJihB73rf3oia7PriYS1S4WzOttDFgoS2Z8Oge/X3
	 4+aBFoakoK/8zG4myi42NN0OYixP76T+h1aYkICC1zh7RDhWVdchf1RsIPq0wj+4Ix
	 hpwYdGS/cw0QD2MSNGSqtAuH5LSd1t+2u1eIwsxWhx+g482ku1uJXrPig6z9gTXo+H
	 qVrUGL8GY1zIVnCkw0kSnAvHLQtY9We+5Cw2xGT0olC8eT5jdSsQxPmAMiTvOOmEf7
	 Lhnrg+/Amcc/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17D4C77B75
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 04:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168205182578.18030.16192898068107690821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ee5573db75af71d5309be19c12a7877c44c235de967833198eb43130cd48ed
Date: Fri, 21 Apr 2023 04:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682051825
