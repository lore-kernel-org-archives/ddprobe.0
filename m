Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB7031E7C2E
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774672494; cv=none; b=QdytoeXiOmk0D70NvtWLPbaaWhsg1juh3pLdsTVAsJ3Z4fEyEVbeuXLqEEHfbuxXyj5L+NSIEvaVNlBK7G90Jh8c4JbvyPvPqswBlWM76oVz7qVz+4WqeT/3x1TiSCUwYPkx8+YnWb3QASl6erNzlDzUicy3YHUe9kn+K+gYNhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774672494; c=relaxed/simple;
	bh=SjWT2yzFZF1186b7H4mTQ2R0Bag3aYhS+Uf0zGkvy8c=;
	h=To:Subject:From:Message-Id:Date; b=XDQm8kx3KNOuBE2isPihfQCk7oB0wmiQIDl2H7qAL3RVaFXVsigto+Lhw975emQHiZIxvPlMr+ghRTn5UiSWWwp7tPsuPkec37dHjqcUyc3h5wTlQxgvsV9ldopDKzZ11wdzvPTui4Y0lDLpWkTAAvbPe4qGrh/xHFWLRIPXeUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uz/Y+Jbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uz/Y+Jbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B263AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774672493;
	bh=SjWT2yzFZF1186b7H4mTQ2R0Bag3aYhS+Uf0zGkvy8c=;
	h=To:Subject:From:Date:From;
	b=uz/Y+JbrU+4oCuZR5Kvln5YwXv4djhWDq23pbX+iZZPBYzpEKRe0srDE7a3PnfwnY
	 0A4upGnzu6LkqRjhM1c7gMum54gS8yfQICeIUwXr08tp0LcLry/XQpHHrJWuxrbbag
	 Pujsf6dCTB+QbzHsdh3xk83BtgsEB8aTxv8487goBGSUOqUWNCpCSQRRryuNgYPqv2
	 y4uaWgkk8nT6ZLeCXlQvQMnL53kpym886oslDwFB22+BwWZjqUclKuLZgdTBzX3/EF
	 f3C6fpO5mbHn0B7XkzqMkJgN0ajwZOXj8Mpo/80yeoiYbawCyIwiVplRIuaRezEUeX
	 tl34FS5GCqMLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAD510F3DCE
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177467249360.28728.6588740209354818455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6416f3be1e828630fe77e7cf64f9045d4352cba42c71b91ed6d5dd2f20a26e5
Date: Sat, 28 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774672493
