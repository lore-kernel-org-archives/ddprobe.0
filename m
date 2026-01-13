Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D193D366DC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768284833; cv=none; b=AuFRd9OIBMy5v/+fk7GMffYDV2WHDTEGzSk6ja6P3veXneeJGsr7QBgRm46YZay1oISo9xGJjGLUpr4yvKP+Rv0Tgpg8bta3vwptI55MzdvAYo+ZjSoFciQbe8KUJ4N0OG5s8gD/oDl1cJdHBP6y3vOSi6mUPbPbBspC4uB0+SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768284833; c=relaxed/simple;
	bh=p7H4JIOffhOKT4hJ+Y14egj+1SgwYjBrEk0hxw6m5xU=;
	h=To:Subject:From:Message-Id:Date; b=HCrvSDvQ/MMGSSgJ+13ZUo0u/m4V5APG3KWY0w0aoEx8aoroyUPfzo6+fpU6KKVsIHpcjAOhaP4JDUlVLjmBneIJ+Pon0KpqOdwI43tF/7FG9ISdMk4pWp0Je8SJRd77ykBpLRyGk7WzuZDmEYajaom87RpN6ViJqfLkMwUBq1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQrj2PvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQrj2PvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0CCC19423
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768284833;
	bh=p7H4JIOffhOKT4hJ+Y14egj+1SgwYjBrEk0hxw6m5xU=;
	h=To:Subject:From:Date:From;
	b=RQrj2PvZAkQQCOg3HMFn897pK8AcIan244MG7zEmrArrXzyKBDSyucus3rTEtB4Vc
	 EkUbBX7EmGLxYlGA2FmjDLOYKlSkVvUNKMENsPsKoJLInagUQG4aAfx1NSBV5qF+7y
	 XXHkXagEAwReeHfe1Nog1w1pTMLX6J6rXuVomvjwOs1e+Bu5s7KOhhZbPwix70AXiO
	 AaUNqbsopvMUtBBPqh4UuB7YRNIaTE07w8VIzG5a033fv2+9xeVP18sEDLQJLwp98W
	 GQJy8qaB/G0ITbj7mOG5JKNZTbDoY9i2LzYHV5O5ma4XnhRcanc9nAbQTEV0kM0Cxx
	 BvZoluPElBeew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBBFD29DD1
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176828483358.6665.7687551952708803785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e2b5cb319a169cf126655b69805766c33fc99269f970cc69ba6d3dff0135ca
Date: Tue, 13 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768284833
