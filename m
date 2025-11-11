Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E6E368294
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762894794; cv=none; b=s/HRkvHh6WFkXMC/T2ANuej5+86EKQ6MbN+VGs+zYWTbHu+RZzkKB32EtSk9XJf2QlA5NgQlQ8NJxcSJZkg0KCqbMkETsmoZNB8ElSIuiX8X8bDL5iAkqFbhDEKTru+c+nt1435Q9g1FqqmZZYMuK04z1KWMsGDFvruT3fngreE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762894794; c=relaxed/simple;
	bh=HZ6nLdfHL9GRAQHy7oqKkhT6QJToJdCkoXsuLCI2cGs=;
	h=To:Subject:From:Message-Id:Date; b=eb1eJnQHogYVtpFMpeF43lx2XHk4Vx2z9VZvFIpPdyW7TmPBu4/inLrnFci8xqiOggmRjZMm9j6o4VlwmNf0/+tMz0js0iToKQ+cAr9pYWbC/vtwzrp5h9T2hao43Gyfdc7zZmyRKplHGc7UjAeNj0IzuKTXqO7zO8/PLqobLS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsLDXgfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsLDXgfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9641C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762894793;
	bh=HZ6nLdfHL9GRAQHy7oqKkhT6QJToJdCkoXsuLCI2cGs=;
	h=To:Subject:From:Date:From;
	b=hsLDXgfvc0p2l8BJaNsQZ2KUzpvMVdYkGD0QM74NQDi2umPWmf0mmhkmu8BRaCZpZ
	 QlnsSqFXxT5FRtTl+ksurxiHSIxQ+Z0Y4r7WQ+QdWmV7G2YCrVrfzfZtozH7LOkYnv
	 IcRMd+YvxOODr2zDrxhEUe9VTMCQtc+lZ3dgBqtD/ddpzEiGvYt3MpuWpKpHUW12Z6
	 ReIzeBW5GAoVI+/0zGF5OZZPM9LQRRUgJYRjg1rVmGzF1vrCpi54vcf5iu4rcVClj7
	 lG2QCVuJoUee6pgorLaNqcr+0YI7urbO3hZE3hRH/99/0g/w6pYYWcW7iF/G/DvgcD
	 gsSv1u7o0ZA4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC3ECCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176289479357.9253.2731184801408500408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9104a981c86fb703ef542b289bd05eb93e41711dfada499ffd1f1b80858af3f4
Date: Tue, 11 Nov 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762894793
