Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56E01C683
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbEJurVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78720C433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705419496;
	bh=ZoueXtbKbW4AkCc3w999jLd8gtVfD8DOyz+yjMiDqM4=;
	h=To:Subject:From:Date:From;
	b=hbEJurVBP7j8uJ48uQ34CxLhekt7xELw6mNMKCUUjW0zHV4EMvc9O6G7Cj19Xs1EA
	 YiaHKhA2aT+5ZF+FTJMYXB2BmV/YRHN61TdsSuqebJjdeICLT6rTpUeFV4uNglzO65
	 uUKIlSvLRkTvxZLmgWqv+BU/DEquwVnbrnWAOibI5n1mFSaHT2rjuIqy5/9fLi3k5A
	 shdRWgxXgXokVHdyLcxaMU304Kb2xssUl4jRRCMWmTOL3eTK0aXtJ4J78b2vNafpRj
	 mWXoCYgl65R6fLP0EQwhuXWgyK4ueWk2pqKkkCth2kA+nZRinGjxhsdKRaK6hmLZdH
	 VfEDc2TYRGeWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DFA9C47DA2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170541949637.29209.10801221993731756938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cbab3d303e3fcbaf9b798881b31d815feb69ec29a17b844efe49f2ffa95f971
Date: Tue, 16 Jan 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705419496
