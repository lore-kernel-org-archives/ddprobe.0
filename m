Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C753C4B90
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780692874; cv=none; b=B27Y1zFdbYyfJWp/kkbYHoHUG+cq0LdEpCthcNkJsfmqxpkG5oJysBZyunRYs2SIZsOvc4b2DBMNwqNsWKOV++tBfpSwxp2qYTQUsmxTKkHoCqJdSGTLQzl/Pl5MrfY/4cJ1fsU0inMJb/i9il8VNGwMO6m9ALtCVXt93IRe+Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780692874; c=relaxed/simple;
	bh=hbU4Om4+f4OUF4/Y9FJbGyShRpmRItMY9/o+7ll9A/M=;
	h=To:Subject:From:Message-Id:Date; b=mC8kAMeYTjnpRP/rFGRMIDb5aUQVn+LLue2VjEOM4+EsN51MYsZ4RT4hPNpmJnlalxLu/QW5f+hpJQTa/MN6umkxBpsP8k0X97tts7+1g48fN/1nzM9pR9ZvA6UZI+4ZNNeciFSrYb4indJkxwcAWGNJ31zSO4F4GQne+mwaaXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4fR76sS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4fR76sS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D695FC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780692873;
	bh=hbU4Om4+f4OUF4/Y9FJbGyShRpmRItMY9/o+7ll9A/M=;
	h=To:Subject:From:Date:From;
	b=A4fR76sSPbTEVwueI+Nhc/SmQJHK7JVhsnxP3GcX4aKGi98J2xrfWX4RHvK6AIK6Z
	 un8nfDDC14QevsgJ7SdoDAKl5jLjFwIRgUOZ1CxR/RglJELZUw7n7KGFgu7GRDPv0b
	 mPFk0mw1vxixHRsYSSk6TSucbzsRLCpc4S2nNXq4RDM0pYdT4A9wM4EP1+OvtLhYhl
	 F9vd/Za5LUheu9pEgSHZyvJzd8YBSjy7w8OptdPHeFP6Ljq/agGTXdIs6XyOweruve
	 fSzHG92KfEF6VEHtvJKVDB5bH+5AMnPHNI4UUovM8patuxMaGaJLS/YXHswiR+tKL3
	 8npuA4hj9bfUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC983CD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178069287369.9720.13025927233201635266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b2c61b4d1af5f1215b26c6df86bafea72d524c02e292bd94636cba4ed1ad4da
Date: Fri, 05 Jun 2026 20:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780692873
