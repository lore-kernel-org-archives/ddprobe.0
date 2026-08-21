Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55E138737E
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787334034; cv=none; b=qYBW3U9wAfISSk8HLZ6zf0ZqIOQdQ+YyFmB1Tu7GX83sfXewZSgEBAqkn4zwq2nCLj9cnIpnFCVGf76BQjyEpg4Ymji8PcBPKVHRqy+VcsLDT0d5p9M4ssYJp5cCOKwz/N2yfdZIQ7ot0gCWnt6f7/24i91wD/Oc+jClQyl0gXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787334034; c=relaxed/simple;
	bh=o8So1PbFHQliD4HYcFn+ZMjhHu9K2hGnRO3NWBiQEtA=;
	h=To:Subject:From:Message-Id:Date; b=by0ZI1N08s5oUFt5dmPC/9zqHt5OYtZ0xdoyUbCGJ4+48pZiOh3XtRI28l6mTpvYtiWFRzeIBC9cM98HjJ8KrRui4E4GMkdSUEqutt6w2h2t4YDRvgwvSpa7EdXNCf9n49NFtXXRjv3wk971Zkf936kCNoS+ZpGD/lnRRzy3eHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKVKpkAP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKVKpkAP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC800C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787334033;
	bh=o8So1PbFHQliD4HYcFn+ZMjhHu9K2hGnRO3NWBiQEtA=;
	h=To:Subject:From:Date:From;
	b=TKVKpkAPwlBt7hyItVmXTXJgvK0cIMzhBrmKFF9nRVM8d4CaRSKDqiMHx6o+xdiXn
	 yTgZI/20btemcz1MpGPhPONeRJ+qCOpQAmY0zYOKSqD2niVXg04nYwAqrUA8X0Qv9s
	 KJoFLtV5Pygy5pL9QIjm4h8iojHaj8NagHKpF66iwzd4nnPiskxwNUIv0ZJTTkCi/l
	 2q+mG6Uio+CEiHxY5mXBcayuRRmEgFUx1DBYFY/e8T44nV/BchmJEmNSrYnzNvG8qO
	 vm/3hd1nYvreaMndXJSU0yL14uHv2cf6Wmhjyrv1Sku+C77kAreOuOt7JkJm+Slrop
	 FpeydlSrqW/IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EB1C5DF94
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178733403371.21998.6546745078339888601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500c766d46055115bc7753fedc39a7b88399b7eab7c9c03ac7e1fd39da74ce77
Date: Fri, 21 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787334033
