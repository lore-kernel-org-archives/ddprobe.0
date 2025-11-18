Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1AD82F6569
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763468515; cv=none; b=p5srr6gY8LcU1GUbW5WfrvrVZPp3JwFjTCXyRBzHRvVPqMGUjh9jrwAK0Y0x5O6pogQREX8uRt3PL3fD90dQR9YguVO1mBjHiWeZdpvy/WlP0e0/sW4E4GXjAGcf8rooDwweWIgpTr2td8Vo4QISDAu0ivRZzFXneWnFg1oKbIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763468515; c=relaxed/simple;
	bh=Dj+WfbKxr3sAI0SipDsGuKUh3YyHhhIxy7Zo5qXrS1c=;
	h=To:Subject:From:Message-Id:Date; b=SBELQ/SvNgvsa64eXxAet8njyyfgUIP+w7u1sFRNgSv588N8zlLeBDboGfgm7dugViv2PVlJIs0cF+GoxzvsPrMbxN65D1Bfgc1BJ8syKXpeKpRun0B67Ltz7aylii7XPlnuhfUH3bu5muOWDPkyFvyecM8hZMaKAuNGi7o1H/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjPjZjO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjPjZjO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E829C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763468514;
	bh=Dj+WfbKxr3sAI0SipDsGuKUh3YyHhhIxy7Zo5qXrS1c=;
	h=To:Subject:From:Date:From;
	b=DjPjZjO6CPN/d81HAVGqN8ghaYe3bV5LT9ifn4cXfajIykZMWgawOEcYoYuE4s/pj
	 jZ8EbZS6H5Y6aNAp+PDYv37alNrQ+SU0C8sO4iPVTBozX4fnBN1EprKfizirNcN9uc
	 v8m0x+xfjJkpTogeHZrMniJZmpAJpuyhNXXxmomdv4Zo/mpmdCYuYxgR/4EqX1l8o1
	 3Y0sqCaFEJh2U9Q0y6iZ1RzE5nSCUhc4hU9cg2uxXYF/vJKUtc0l4ep7MWEKeQzvbN
	 v5JF3cpfilnwQUdR3W23pldDdsdsHjJ0WeH/fwQ0EtkK97tIu0plA3iXwmrLJB8NWs
	 FUQZ/jhYH342A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90538CED63A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176346851358.5162.7828941727557903401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbd4db9d9e5152374e02198c00a0f1e327390468a6064101cca21472149795b
Date: Tue, 18 Nov 2025 12:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763468513
