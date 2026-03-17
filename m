Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17413347BA7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773730494; cv=none; b=OiI36V+n5WpwM4EE0mX849qrpWrn637sstzpq1Hcv6VzNuuvdnfjNMT06KxCsnlqw4K2bA9Me9o5mpQI7eakXilCEv6Yzj7mSXy0hwFbZ7alKrdoS2lsx+U5qH7O9Z9NB5xFuIJVZd/OiRep0Kkeho2UL+j9v/SbYz79fRnF6Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773730494; c=relaxed/simple;
	bh=aIuz+UutYAr89nsEyZY+Tp5YOYiCXDXN/CjfNTlcx84=;
	h=To:Subject:From:Message-Id:Date; b=ULSIrJ+YaH9BU0ulWW76oPoyQ30Ww0ZfLHKZXpayIJkIC/tKiDkJSJfN6zfmKBKUrmgEgfQ7VkJIsw2Rr65qdUOYTdQSCxcJZVMYrRxWniTKDvhHvNtIuETO9kYFFJSh8FwpQpUF+O0lFz67/l3CSygnnRWxP077fI0gxtDccWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amZmKbNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amZmKbNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0826C2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773730493;
	bh=aIuz+UutYAr89nsEyZY+Tp5YOYiCXDXN/CjfNTlcx84=;
	h=To:Subject:From:Date:From;
	b=amZmKbNzIhEv+vx3n1vixlDJhy6jmnCQme7xVVrEmj4+o4vjfwwo92e5wfE+Mh3fS
	 7r97zPN77/1eTIfNZAK5+P1EHLBEzou8XLoTjiLMPf4f5Zt7v3uP9Vb4nRmOxZ+Czk
	 aXqLScIMydmt7wz0iKNe962dSHFVPLFSMmuHA0DL5+crcsAK6YdXrOYjmB2sZ2Aoxi
	 BIYHNNkkpXkIfyk2N8LWIkgWaCivzQ7p95pxx0j7vNvsM7Swob7pIXhVCzl1uxa+ci
	 GX8ywxUW9pz1nt2+6pdju+rQ8WliH8eqIgTjj00hUAmgj4t8tdKgebIzoraN5M5Mvg
	 GC99SSk2XahnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F241F33805
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177373049357.1492.17577065673883160616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad2f895ce8139a065376bf993f9f878f77a3f13e0ded19fb44768bb1a6e60e8b
Date: Tue, 17 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773730493
