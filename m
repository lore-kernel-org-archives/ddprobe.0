Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F4F212FB5
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737548754; cv=none; b=SVsze8DiWKpY8Jlh3jbwDtC5MUeuZR5FnqxIeKPjHEvm116GV4MAuD3QTJ9fimQtFuwGnqq54k5lv06Gx3d/oW4jkqCd2whXPaNdGmDyVgPKKFPwBbEub5GSybjT4mSk63TVKF2W/bE4zrHIt98gGaW7J3fswXsubmikxnIoxIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737548754; c=relaxed/simple;
	bh=DclvIHV4N+LJAWBTVPk05R6mm66J+V6o4I4n4x1vHAo=;
	h=To:Subject:From:Message-Id:Date; b=gzA3KJOKKayGeCowf/ySGw5ABpT/Jg1YjM/b/vHU7hhPdQ0jZJhMhkW+SirloKbpPxIh5te3Mi5icmDKbIGSCdjzD+WAKc5qZa71iqtQS7cjQAXGd/gtTu4mKp2WNXiAWd9S3i2DqDtNXKV7iiv1Q9IK3Q9qiHvqyml9RjMplrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbOqabR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbOqabR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E9FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737548753;
	bh=DclvIHV4N+LJAWBTVPk05R6mm66J+V6o4I4n4x1vHAo=;
	h=To:Subject:From:Date:From;
	b=sbOqabR/Jz8Aoc4P1x/Pa+hgYWTEX6sRej+cpro6YG0wGaVLJELEPTRDG0CRl/VoC
	 s62SqvTbvdfRpFpmGUYWSXTf3dbhzU9xJuyITqTinirVtFXNFi2Oi5Y37PhLNpUXCE
	 aD3uCdicLb7EIK/xw6g6nvITCuabNQDOroeXCzxRhOnkN4M4b1W2iCHCYp+AYoxPtS
	 p89Ladb3EdrBB9q7MnPfdUUV7MeiC/lbiGCaLZhT4xTgnVMEuYxk5kP/wlq6+7CXUx
	 Bauz60SrIfb6U2ogRCdeNKMg0iLT+bySppcfcuC8VHuR5/Pag136immqbef0tOboxa
	 xDQKd06BQbHfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E0BC02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173754875364.11229.9452382942753585369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5910ef34bb7e9180a836af1b7093bf0b31af382f55fc90070e67ca03315a6d21
Date: Wed, 22 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737548753
