Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2EF800
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772412294; cv=none; b=goOGpTCBctuIFankgBd6E0bbxyVMx+caWRvQpEsxsNKd5J+1PyMM/ygzu3W6b5iYAGAb6PyKjWoQeXaLBmyWjahvorUw4Ks/E3OF3ubm9tsh6JP/48ZfgnXVQV3Y+xZT/Nt6UC9OevjazBwiiYHHOvOehJQKfd7SmbEBxJpwiI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772412294; c=relaxed/simple;
	bh=FGPkBpgKl2tjKK+IzXzdeecTIdKjYbooeqAcrKA+aI4=;
	h=To:Subject:From:Message-Id:Date; b=hxihe4Gr0zn+OOTrjleiE2ukeuzvSxYZCsD1lKMW+tYRLGZWaiPF+7Y1VXWMcyt5kkfXOxEpXHUJhB50nQ5RCmt+iVUqvzhYPAJWEVHOdW0hkb6HO7OTKT1T5q/e6+1yGtLX7773PKl96j7OST6qIbpEBv+QkQ4JHEh/xjR5bI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzVt/bNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzVt/bNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C7DC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772412293;
	bh=FGPkBpgKl2tjKK+IzXzdeecTIdKjYbooeqAcrKA+aI4=;
	h=To:Subject:From:Date:From;
	b=FzVt/bNTOFz5kHEfzRu3T9FGwdeLHv3NZ4lAA/f1w/mdD60yWg35cthfZeBbWU52j
	 D+HUl4IqQde74Uc38qi0Sun2KFZ7QDom4JJjJ/pA6Q7+B1piC9QBBTx9gSIAmY8U2H
	 L4AgfeHYiZX8A3leicPOB9Vj1ewjpPwtJPhc5yxj7BhU3pggIKUHv6lClx4n/HWhgv
	 mtZvC3uDcDsrr8gWHXED1h5uQTSuDiU4MjoeAMIwhN0sDzzLvmIia7cTicSqP9HUVz
	 o4hSHj4F3ecXBmoKeFQVLo+sk3Gl81HzlH1Da+wghhEoZugMX1i1jjqWq/Em5S7FG9
	 W/8i2BY5mjPoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A32B3D58E40
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177241229361.5741.16738096177417118111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea25271601e4b25e46cece0308d60f27857680509f25f4c71480b656d0c212be
Date: Mon, 02 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772412293
