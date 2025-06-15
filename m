Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDC628EB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749954594; cv=none; b=iLNYf+6TzaEVKvcSFG97NkGysoi61TgRyYYSqmfbrx04962xmVo8qHX3ZcQsON1dwbVD4x1C03ctYEgT3vkrO0XP5swdnBbMJDbaZ9e13zMj2zdHnxeRVB96G7lKcYB1hgGHVGXHNmFglri+XkKXUN572X7QxR5vHtiEce9Mb8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749954594; c=relaxed/simple;
	bh=NqxYYahmsuxt92YBiUgcH6o/EWXZQjLRCwn/TEBtYaY=;
	h=To:Subject:From:Message-Id:Date; b=QZ+tOoxaWeooTNUyf1n8g2i1Rh4j9eCxsi3WUOktwM2bSK6UOvA4TjJN/vz4ENu5edpkvrgR3yL2bfEwZuGZZjQluQfT5L/fy2F+lhs0nWG/vdkCtAp0D/DubdoRqyvPKTOXD/vJH+wRBpefXSZ0gLhP5kuL2MKmZtWWtevWRiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkbQjQcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkbQjQcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F89C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749954593;
	bh=NqxYYahmsuxt92YBiUgcH6o/EWXZQjLRCwn/TEBtYaY=;
	h=To:Subject:From:Date:From;
	b=kkbQjQcSekbGMHcn2c0FerUi9Sa0LV1tloAIOHwG8C/qiBndUeOUPHiS9188Eg8x3
	 YGdWI7cn3DZgeeAGB4wRwF8sR+9kXEFLuaff/eyGkWfBtZy7i7Q8dx3Y6iqvV2dgRX
	 11vD4BZuWK7otM7tTOb6zIiAB3yksDh//nUqrFcIgIJP9USSG5/a/5G6ZoPFaaHBUJ
	 VoPFx5fZyaxwKWJ2s9fNgotE0StTc7Nxzk1yML1mJa9MtqqG3NblRO0H2wQ9wccZsu
	 OUT7lJN/HWcLQcCw4f3xeSXkhtpdr567tSnQtJejsz0k/5YOVSxOP3o5Y12+9VMFN0
	 iySZ7RGgx6m0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F4C7114A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174995459359.20888.15416126743110913220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 881f8aae662f70344909cc9b238aa174e41772d57f07655396e006e871970450
Date: Sun, 15 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749954593
