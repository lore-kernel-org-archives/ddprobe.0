Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C6435893
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745049594; cv=none; b=Vhf4N8IAxMBO73eKl2rfDYGF/o47gnBBPUVgJtUTCJ+xKHgPxAB8oU9KDUgdW12W5MWlq9yqPsMpjHjNSfpvjHuqRlK8XnhXZKqnq+MR2ora3Siny4xpSDGxvL9vc9G3QUYSsKBUUyUnMr2rVWrb/kjqN3gm0sF+sCoFTjw8cBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745049594; c=relaxed/simple;
	bh=dI6/FKXuraOnKXsehGV+j6iXEWDF1WQo1MRuLUy78Os=;
	h=To:Subject:From:Message-Id:Date; b=sR3APjw3NmC+ys1aMVETAMH+GzRJaDYVUKWu9R+9Put7YK5yw6PFSenjXGle4xDZfnO0SPwbZvhZLWsnQJ6KwttzA/qlYDPpluTOcuoaLnunlWSx/LszlHeQHvDHAX1iVuqODgU/UjXKQ6+K/IuWp/eVOF4iH1KVzw7+eX1En3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWldxYu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWldxYu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC436C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745049593;
	bh=dI6/FKXuraOnKXsehGV+j6iXEWDF1WQo1MRuLUy78Os=;
	h=To:Subject:From:Date:From;
	b=FWldxYu5Xir/Mav9fKH2rz1F32FLWkVZJfUEgdEPQ33xPx8/s7O2kjTjkEamMwIb9
	 gI5yFQeF4cd2cFUkm4ptlxbAqA63of1irD9JQb9McbO1EUmVbdGnVNk3BccLIIKgKj
	 82+T8CS2UHz7BYfY+7kavzTxeY1CW8TPYEDtdVC+G3qbivLyTSOGKjFrITyD/TEShJ
	 +4kkIQ+Ww2VR/Mdeo7yNjhpMwXcEWTesGul52lknnJ18ruhTIocjMwOn0Mcuzz682L
	 kNehTea0Dgk8accLj43+Ox97dnGY02NYd13V1yE/VdHKggJpG+aUwuPlQBEzoLB2dZ
	 2Kop92MNFrFEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9857DC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174504959359.7188.9845877926317678053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee98b10fb64f4afa0651fd0287259124ef783115a509a3c57df3b41e86ec6950
Date: Sat, 19 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745049593
