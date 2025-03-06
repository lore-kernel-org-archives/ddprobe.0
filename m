Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A5820F09C
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 16:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741277935; cv=none; b=V5/z6I0L7XS90VC10qA3YqZQN8pDdNGvyW5T/EWvuPszI5Gj8MLwBx4Vmh2WYh32feFCzU3dS4PXOkZD1XLYAWhSoiiYD5V1RFXSsTE8QshjAJcoruhDVEktrbumqOUrf2XEv41ihAc15XNMBy5EXe3H6l661dVuwmUolordiLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741277935; c=relaxed/simple;
	bh=0WAUPLR6sid+rA8yklACCLv7x9PV+3X0zip3ogbnZUk=;
	h=To:Subject:From:Message-Id:Date; b=HxzVWNhIZXVYWVYgVfn9o91VXDLeePjFXGr9+yj8FVKtXU5kHMjd0dSvWknqNxXDUB/pp+6ctRc03G3CYJCxsy6oNCnfR+PVbU/i1RFjXVoBCnDlIF3tBj/w8m7pfWkcv0iYhgbYwPgAgOtH++n7tIJq7B7tFLhnJ5WUX9jUb4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9xV+UWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9xV+UWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DEFC4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 16:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741277933;
	bh=0WAUPLR6sid+rA8yklACCLv7x9PV+3X0zip3ogbnZUk=;
	h=To:Subject:From:Date:From;
	b=h9xV+UWz7zpqUrCYQDS4RRR8FvL5wf+Ux6ruQbZK7/mx74Lm8UVi4dqdR9wxCuAmT
	 WkqL5ovHmB/ApYS8s5jVXX4m1oYXbBLvC1vQ5kb9mRLOk1WNrNpfGFKY7NAcXpZXfd
	 FG3dAurZEfcCR63XQBPhIPaTIRljNgBOiw5rf/pfwhsuhshJzW+kGrPS+x4x3p/OHv
	 hX5uSuzSOPEqypba+TNkIcQu9IrLZmGKxqGTz8q523ysX+yb/KWOBSJC8yUeic6eMP
	 00xjbWHmjsOSKEQIKIHFR2OZ4SFjg7EBFsW/bZ1r9LTqhVVTRWxWa9Rni32TcVfwY8
	 2wCOJom7O20jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4AEFC282DE
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 16:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174127793366.13369.15707563712447546267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a361ab821baae32e2c189ea28feb23edd928d499b29056c02b8602c116bb9a
Date: Thu, 06 Mar 2025 16:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741277933
