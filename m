Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F525173
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743450594; cv=none; b=Nn4HOMtEPSPMxZhHGUmjaRyYXmMuz+kRF7DFs71AWbxo+Bx09oBfkeiLY8XZ1hbMMH7TngAfdXGFwY4aA3qNcP1Ekkcrt8LmuLGqRUioZ7pIqaJkqFnB+9Bb/WJPnx1xN305tvYOcXUZuIVYkRSGSS+AqjCAddyDdU3v9fdW9BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743450594; c=relaxed/simple;
	bh=9EgVq71F/RgWZm/2ZT18/godJ0AeQWligUfRKZ4d1O0=;
	h=To:Subject:From:Message-Id:Date; b=Gt+k71CkTZeXJoiraKa64GWGr/7OkpMhUzXUEqNslfRAZbz3eBMRNHGE3PfcbhbMlCwztF0yj6Q+yatjhTSHvb2opCPmIor/JnhhiVjmF4b73UQJOldfmS581ZR5uTvJwfmdJt0LU+8pb6Ree9jHhekwgcO/CVSKNmGB5fxIbF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Blkyzk5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Blkyzk5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93D1C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743450593;
	bh=9EgVq71F/RgWZm/2ZT18/godJ0AeQWligUfRKZ4d1O0=;
	h=To:Subject:From:Date:From;
	b=Blkyzk5UXePcDwvvxz2mtefcBwO0hviS4Plsqb0N4B0rKtBwLbRPSawOFplJp2xsl
	 OCjJO9yBIZSKqOrZ/LTceZGhTWRSY4E1aorvMGWrX04R2Ycw3g3baSQoo0gOEV7VWX
	 b4KWyIoQDIzmgE0cXCNJz80+LEQYyIB48Y3s1i0184JzMK4e4AMbLrtRUxUeh7GuGH
	 7/sjdhe91n5BSpYr2xkPHCynhnfYwZetMYnS/kGn6ONo2F3MIEq+0WVpLXJwC9DJz7
	 +LDOpWRdbPana54M7uMz6SMTkUKNzhMtcAzx9oouEJuTgVx5sp/qUty0tW8UN6Zg7C
	 nDOjE7CwI/WXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A2FC3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174345059360.475.7449066898549713451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89fd3b903d4266c79af778fc28652feb4286aa2e54c49693e949aadc6b1ffe69
Date: Mon, 31 Mar 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743450593
