Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233CB82899
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772499294; cv=none; b=i7kbw58r96x5BjC2P966w5pEQ0HMUHXwFUHjcjcaaUqiPHpWZH1CLCTAJnoxBRd4Xt9FKdbcClOJMLwwWtHARIZJBFzWAtPqeRuaOjDfH4BQn4qGxf1BwevpI78WZoir22ad/4QgTFSKQ3jEm05bBnT5a2IT2+5m/G6au55qIaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772499294; c=relaxed/simple;
	bh=OLDkSzN96hR/j+aDnJ/uFIRzyjLKCcGnu4PqTdgdrGY=;
	h=To:Subject:From:Message-Id:Date; b=b6kQixiPfNd+9F/q3PSjr1kEMV3+VfrQVF4o+9yb4qEjKawtW4MgihiAbhSRvrqLGGMEoBHr8YbFYef3rs+CvT0t6GEl0o0tHrM4/Oq6R7qkg46tNMOe0/go8JmslpjrlDTTEgw/8YkoUnljlFuaHdZ7sx1ZGMBIhHLXjp00LQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gms5lGeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gms5lGeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5B2C19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772499293;
	bh=OLDkSzN96hR/j+aDnJ/uFIRzyjLKCcGnu4PqTdgdrGY=;
	h=To:Subject:From:Date:From;
	b=Gms5lGeUQojs6r5izhNTFEICbEDjuOsraR70gZfmQBMXFo/21HGj2lG846Z/iLhgR
	 EGxiS+GJEi+72QT1i7SAxC67nwYhOyzmTJ7htjEElAMLEjcmJNLesR+xyYeHaEpF2x
	 3iCqr4ziMtDat34JNsSRGmBqE5Pq+vg2NvbvirqCjk4S9iTebiQjfg2fFkoGEbBSYf
	 SLXS2/pqX5c/xC//+82CNO7vmo46lSgq3s0sfLgqYAU6bNSv28AKbXFYfx4HyGT5bv
	 dcMZEjKD+Hgrxmwcqq+v+cmjRzpUZ3HME+ASX7D2bb35YkmdM4sU1R7kiih8LLiVsL
	 4rXI5nO5BpXrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5240EB3648
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177249929362.2489.9245611258963912690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca73b900456a9decca53dd03ea75f60325f63762e8de0ed919f9a806a859ca4c
Date: Tue, 03 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772499293
