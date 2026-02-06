Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1817730BB98
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770406434; cv=none; b=dQl95advgV7DllnkUZFLBi9ctjqzI+QNc5+tjiJRnc9FdlXFL45/Yud2wwTTnCJ5EBdPjLdYWZ3JK3Aukopx9mfpe5cK/8gglBAEyOSJH/5Y88G3ZNrB0/xUynUGFcSuCEgxt0y1ojncXVruTKfPhDvhNuRGHYk3l2mfN1N+hhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770406434; c=relaxed/simple;
	bh=pzAjC7Dl5D4n4vJZbN82O5pjzyKrJoyqQ9HPUIZwaE8=;
	h=To:Subject:From:Message-Id:Date; b=mcq3mUVRGb4sAECDUkhEMc7McsmdMRNE5u0vlIuBEiTiSu+fU+dBCNrHl47uFGhpNgTgdmWCu/eqvMUdmdQbkAq9fLNmEqaFsAmNvzrL2tzYZHbxNLStg8pedt73UD7FoUmgd864HkEptfYw0YH6uYUD8CCYo7sCWL32Xuz2Yxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuFSSddV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuFSSddV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55C0C2BCAF
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770406433;
	bh=pzAjC7Dl5D4n4vJZbN82O5pjzyKrJoyqQ9HPUIZwaE8=;
	h=To:Subject:From:Date:From;
	b=VuFSSddVDE0BzyXsbcHfSdOxINTY9z+6KimC/HtLyWsc5uJBMumHjZrso7cHwQPMT
	 /D+zVEFgSAt2o2X3w8k8C8re3dtIqMktlhPBESVuA+XawvC60OzNA2S18sipzvu4WN
	 tvX1i6gEo8CNT24fKgeOAgCm2Z34OxEPKaahfQwXEcpQWXIsZmMPl8S28HLP7RwKEy
	 A6ZYvppfuhGcaWDe9DOMRjKWJJV1PKZo3CXT0vtfgf6pOx9zt4JQBFeCV9+JLEfZH/
	 9Jm+BbtpvZoOGnhHVcOmB/OUchcLe9ujiRcSQ826vqTA5VrxjZlcfZVdGDdKNsyJkz
	 jNCHKKZdQ5nFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F47EE6B46
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177040643359.21556.8928177351081970049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe888d41bdc18558620b289d5e04494f231ccb3d54231fe9ba56df000fa7614d
Date: Fri, 06 Feb 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770406433
