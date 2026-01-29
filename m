Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3C22D0C95
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769679834; cv=none; b=hAYXlEZv8t0rKRqHo4VXiVl/pIWZGQG32HZXQpsd3fu76D9pvmA2GHpiE6mGV6y5R+mr/rmpFIIDnCktoMM0QAVL4vM/zEVcT/LCRvFHEcgmGihRKBFRv29xfHrGBkkWPrgWvDTdYGMcCvx/psVvWRt66vZ7X/Wf9ZHiUajiSLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769679834; c=relaxed/simple;
	bh=Umc0yY+0D+i5s5iKt0fkxCewdBNQiMIPhjjBBpQ4ZK4=;
	h=To:Subject:From:Message-Id:Date; b=peeP/wMyxXY+5omEnvrVB2UomjCGV7MIS9lTX3jRqRYCZYu/trkb31SEoLshOmyFk1wedceBtqpQokTGYSqkU/dHnjtasj4AKl7ierIcUndXVOpAhON37zczC/pg9T2oDmauDDqfxJxFUmWaxGRJ03q2+3IflIZhm+5/uoVECzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4B3NOdO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4B3NOdO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08C4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769679833;
	bh=Umc0yY+0D+i5s5iKt0fkxCewdBNQiMIPhjjBBpQ4ZK4=;
	h=To:Subject:From:Date:From;
	b=R4B3NOdO9mwDo42U6/u1PvAryhJgB2QG+l5RSBBu247PdSmiJ3PBE2qu+LurZnaVz
	 W+ivo04gP8hc8YmhUxuz98Av2rddN6L+/Ufan774kGO09tmfWN/g/E3qbO0OQF8JlM
	 QYlb2hxd39mB7LG+WM6GEEM+LpUE59SpgOOhztPneLdmxd+z0ENq6gioBbATQcmgng
	 juIyHnZc3Ycz+M81puGvuiMJoqR1F6oNJimNgeYpuKEhO9YGr9TmExpxCYlsTav/Lp
	 vBw5IC950XNNFUmD/vMn1bWjPhSfO7A4jfyZiYfD1s/6G+05wKSmJ2BQK+7CrRW/DW
	 NNiyEAOLiWspw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F068D358EE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176967983357.11804.5687721977548583204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5deced7bce3e6a2d39142e969f668d3d0398173ce25323877e3ff99ec049b386
Date: Thu, 29 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769679833
