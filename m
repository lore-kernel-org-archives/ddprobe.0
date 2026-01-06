Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192CB32695C
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767696834; cv=none; b=fEAGJjD1D2nS0GdS58VgV2mQ/96nu+ELUK5trOFdju0rN12deD8epvtBq4bKNbixMf+ISX6QbsC2Fy/qL71Mg2IwXFI8fD1qgWJGRs6Y6Qczj/bfZGysi4zO/MdX4CbqoLLNqBZlnElNhNUfY+W0DdrmcxEu4aahA+0WmpZ/dOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767696834; c=relaxed/simple;
	bh=H+PAwNy5WIc+77HIGgj/ME/Vqh3zKotu0xf3rT1PdUo=;
	h=To:Subject:From:Message-Id:Date; b=MYPkEkllHpjow2rke71o5Scy304g/GwKZBZa/SLh0e6oXH8IFbUJB2VMJsAGS4NAcTYG3p21IdIEB9oAU4Xp70xwLwbYA5pGo6WSMPc7y8emiqoWpkVYz+GLvmB2vlNR9K1Pe4TiVnOgMTYDoKtfqe4n//nN0FYJ0Kmd8h5RVu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meYgqqGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meYgqqGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA8EC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767696833;
	bh=H+PAwNy5WIc+77HIGgj/ME/Vqh3zKotu0xf3rT1PdUo=;
	h=To:Subject:From:Date:From;
	b=meYgqqGkP3w726AkInAsw4C8ypxw35Hl9OIHvawqiZzueMCIsMPvw5lyMV9z5HG12
	 ZHxQXNv4YT10cs9efytjutzsYi+tOVbCVnUu8BFMTfV3gIZGSfbYf5qg+TTPCqJZMI
	 Isb9qs6idYGBuEqb9BMPRZaOWhM4dJI+bK63vEiAbKDVqka8vps0heDdfhAMrg3qmp
	 6i0m0zrfvrNiO9iCcPF/+m9S6wTSZzKkubgy+AHsvFr+bxxmOnpzD80rYwonrmoZ4H
	 Wz5bChf/N+URSmADunlU72sabwcfr8v8i6EHVBIfu4pSGgd/tXAqe2Pi3/G/iocdeh
	 7Vz3rS9L1iihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B6C47BEA
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176769683357.6165.3903885341071696993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dab7ba0f2671e55038331fe47d9a344a19109998fe724f9fc6d654e47d2e1d4
Date: Tue, 06 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767696833
