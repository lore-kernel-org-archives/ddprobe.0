Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3B12652A4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756829394; cv=none; b=uJ12p/Gmpz2LwkuQxwQfoZ+LxaTWDp/BIIP+K325PaD3ZSHzsl4tcRKStmGlhka6h+rXbLHeH2EjjTe+Re2FqscbicVu2rJNxIhofSnE4isW888awGs3hfUJr77+ajDJa2D5+0m3bS9HelzEJ04dftJItExpgR6PaScKn5S7aqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756829394; c=relaxed/simple;
	bh=Vy6uASeJ5fiG7sPcMhlO+0WufQTDrZsuyhfw8NV+bQA=;
	h=To:Subject:From:Message-Id:Date; b=gQnIRdFB8MfnVUQywefdj1bK7+sO45obamiKmJy2bw/eH4R2SeELQvAOesyPDdf9vjMqxIe5nt2oFU1alrNihMLTCgQyK+HpQEdd2f7iFUcobm4qfhxmtDxV2tWklEp9qQMZaAPlqoPUc/8KGt9D9IZyb0FqbpbPduqhQSBiM8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2Aa0JB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2Aa0JB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70EAC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756829393;
	bh=Vy6uASeJ5fiG7sPcMhlO+0WufQTDrZsuyhfw8NV+bQA=;
	h=To:Subject:From:Date:From;
	b=C2Aa0JB+74acdVWL+MBzR5l/a2zP3jqFMjQGvhvaahjNUTjwDZRtqLg3483PMp70g
	 kcqUR1NcTrVXT43G5QNx2qceuRXH6qJ9t8NAm1XybF6DVhB+FyMXKBvoBkNnooqPaQ
	 4/zdDAQwzjqB/5gD4eVsculvHJW50QZujIyzY85FzrewbVeFjc1uyESwAJvCy8ciEP
	 Iam3+rlKaIUgd8rh3QIgXFWMGpI9q/XEkpWFo7jyIPO26L9LDQsHBhqG8TQNcbQ9yt
	 R+w3Y614GHHz7F/JcwFl4qCS/vzTdUmhFj6OSgGDplg+njXquD+zdI+B5LwNYfcGh6
	 av9D5l2MWU50w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF79CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175682939358.23130.2534947634253879843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43330b14664386e29322b92932425ef31c1d1b81b6e8ecd9c0214d24ca58389
Date: Tue, 02 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756829393
