Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD793A75BB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788598834; cv=none; b=Dpy3vEKUp6h8VMOnElU73waH4vpKzHXlXzoQWexzRyIOtaYHuBjiBogd2xQBS2dhCm6FHZiEc2yhfQVxE2VehYEj3Omfry35VSwzKh4tiAs7uavq0deHz5Ezr8Nq6SiTKBMtNU+Jc82gopCXYiIuAie8nA+wKrYmfuu1FBz1bB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788598834; c=relaxed/simple;
	bh=oEoRs4jSYAfAL4dTAVJArVAh1kN7mbQ8HjUbfcv3/5k=;
	h=To:Subject:From:Message-Id:Date; b=Z4DW1i9x19Q1sh/GHOJKi1q8hYLW8lC7wlNt7+lxDIbGvjY+2LWZ7gA7Ua/iUuxiI/YCm5q4yH2nJ9LstU0ZP2pexRP9q/gegxXa0e+AFsTxn7mOeSbTZlGXdoqLmKC0BjI34l3U2zzCgYCUU3Ioo4gT/ZMTuRd/8uDHj8KHtN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sz2S/G7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sz2S/G7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BE1C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788598833;
	bh=oEoRs4jSYAfAL4dTAVJArVAh1kN7mbQ8HjUbfcv3/5k=;
	h=To:Subject:From:Date:From;
	b=sz2S/G7yq0EPF/d5ovvuCIgq3mPJfNNjlbJgmUCqFElu8z8CcTO/Pa3gp9/e9ISG2
	 v1X84orye7/grej4b7x02IuSDxKZuT5Vyrvp6iqb5Z6djAKcjvG+SCtVmJvPtNgi3m
	 SlRbk7MGRj3cPQoNXvYPTvN1fIv2N7B1kYnw+TdYGEuHMKaVaMyR09Ln2X972bamB/
	 WitTJvLF/MGb8+C0HfoxzNzV7yUViEy9BgCHRcSjIDxqm1LR5KqaF4wJ1mlpdGTV4j
	 SUwWB9mpHfqSph1qu6Tc3KdV2oBNnnMsO60ltG9RgNP5gx1fCIiLyMDXL6dnxQ8VzX
	 SOgAmg+fvu8qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C25C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178859883369.19704.7333523393873389818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93fb40ba1627cee1c599a08b6e734c64ed071df536d639476302785a8b947130
Date: Sat, 05 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788598833
