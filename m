Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8341624DE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744461594; cv=none; b=qUR0thXeF1bCrI+Fpy0jD/kvGSTZaNiCpz6FB+vA1Z76ldk6dvTFkuTtbSOcl7B8aSHZsAlRrDhY0lOG60MXoKcZNpKDysEOQ+CiqzMRlszaWhpBWrLvRu5EmNMmHMOQGjiDuB2e+RWND1C2W/mM4hsa31n4AzQ08uD41UaFEZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744461594; c=relaxed/simple;
	bh=eEiWD3rJEJb77l279hJsxsHjJkZJNWeRpP05V4g9Bf0=;
	h=To:Subject:From:Message-Id:Date; b=eYt94hE3GSivrRP+1iJqjcH15QGUMqJ9NLyUBskOHnYsZVUloIT3KxZ+EpCGEXNH+84t7YbE4NZBLtlnqimGyR+jvX/tn3xpx1LldxU6uXlCA1QFYdPYr3E+qCJs35onYZkHHZhMEnZYd0xm7EzwgGSmprP/982hl3s+bR7H0uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKYBFz1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKYBFz1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09E4C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744461593;
	bh=eEiWD3rJEJb77l279hJsxsHjJkZJNWeRpP05V4g9Bf0=;
	h=To:Subject:From:Date:From;
	b=AKYBFz1Bc9GcKCXrl7HESe0NoqSG/wxbG1eNRwdZP4nDCgL9kv1u9WH3RZZzxK/ox
	 x0eUOzxHmaVmbhk9Q85KOjkpdpGhN1CgoasO3j6aE7hevB0zVeAcL+eG5IYvXJtOiR
	 24lz6sNehY5kA7pOA7XbCgPc3NlaoB7xj8mL22tpRUuYcWTXOVPDc519LPnsoVNhqf
	 mzi64C+TjSlUObjgapCrrgbliJ1DuZjvXBM6gZiHkHwrB7DwDoPZ8gZyTehiSt/eQ6
	 zhDlEKYYK77dmI541382VmMT/VFbz8lFFsYUZrCE6oI4r+ehXlefh5lyzECswDr6+9
	 RKVimW/ta0DVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A523C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174446159359.21207.7522090690323037677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb43d6ac21d83fb7cc3856849b0c029fb08662b16f6fc073d188db9c0a83d8b
Date: Sat, 12 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744461593
