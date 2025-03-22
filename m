Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4572E4C6C
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742620794; cv=none; b=pn41XVeLg06ilQ3LI+kBCNesQKJkw6/21QVBj8aJ7+Uq+U+IxIg5lvsWB9Si4YdF9/GT+eqWlTz2uxJg9/7qK8L5mx4kjBpL7241C9/kVg8zo0lMnjsvVOT5Fqcfan7Sr0HySOOdLOZy0ye+P0iX+vnq59/bLJMmlJ9fb/2iOXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742620794; c=relaxed/simple;
	bh=DQfbeAiAQCx/94t/DmqUmAjW0753upA0Fhj8MM0OHR0=;
	h=To:Subject:From:Message-Id:Date; b=OAH56FE9DMl2BP20dpxSoks4gfNYObK/BtsR4iDop5Yfr0aW/6nJtjjLsEHpKiKsFMN5FqrCatwZRSJQ1TnSNrGiDLhvL+bh9iH+NQ6+dnU33ICHlavW5ZGIvfvXZTHucoSorx4PJgpE01XGMnnrjnDiSbKBB7O+KlChWM8t2P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGfTtYfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGfTtYfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2730C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742620793;
	bh=DQfbeAiAQCx/94t/DmqUmAjW0753upA0Fhj8MM0OHR0=;
	h=To:Subject:From:Date:From;
	b=aGfTtYfLux5iZ+epnofSCVHiGEGpat6kxYsY1zltKVOyS9WM811yBBKz6eI46LXfW
	 gRmG88+vXzeQmZoQnbRhc7jK3xJYzHxutRGF+TzP0iz+QXxWHKo9/ofSUvbexQyXbu
	 /9vj8eLKbdqvPKX1qxeUMK33WV51A0E5gVR3L3PqSzt2KW7K8lCRFZwipdH2zJdaH0
	 PYatGCfA/QgOMa3Qwg7wtu+9BP3HbXC0edSTGb6qAH6SFdrbS1V01FfisTuy3ry7Iw
	 Yd+tdZCkB8kNpYEfdhVLNP+ZzLI9geCpfh5GATiE8g98azKpEDQ0mmjdkggTchS8m7
	 tmJCFw6SUfj5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A65FFC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174262079366.19267.6367467495125276306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1237e92156e43f0ee1da089d75587cefdad0f06560008e67361b4bd15d3a8473
Date: Sat, 22 Mar 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742620793
