Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154E53A4F46
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783854514; cv=none; b=bOWwQQo9wUKYZ1IOtpxGGya+0iWeK1RBbMP6rrko/xJYIVh4CzJB9wetdmHiOwyJgQ2NNzba0yYZiFcs8enn3j2qZg4cC9u0wpsFSaZCcdKvLmrZS8EfxBiOksJ/Ap/jLOKqmqKP4IHoRd9Omh4QfMgiLJsxW1KvuyAlnFcrDFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783854514; c=relaxed/simple;
	bh=ApPNKzb19DwP673h5s2WzBVGJpAq5acNxiGGKIqR/7U=;
	h=To:Subject:From:Message-Id:Date; b=OutJSPzgh/HEXHxx7gZVsOndfYdqJf4XjvJI3Hc1KdY4Arw2VjNpAiVC+JUyz7kJ4t2a51Xa/ZLqN3Kh+LXneDbAQG/FYBYmFOCdmHDcQaFKLmvchyaQKoFnCXNyKD7usx6QKkYsVj4/sNHeHYViiH6jdTiH5aJcRpBzezzKIZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tw5G3gVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tw5G3gVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD649C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783854513;
	bh=ApPNKzb19DwP673h5s2WzBVGJpAq5acNxiGGKIqR/7U=;
	h=To:Subject:From:Date:From;
	b=Tw5G3gVt58U1kQM7aGCKMbjIQ+4uRabHc68m18F9T9AEiD3QhW79lPx1Hz7GidXsD
	 GhzWVS6fFL3USiSiWCxMhXx50b6DOdxuSWUSRUlk7fG5qkWxoVC0DmOviTmL/HQNU3
	 faZ17drNuZrFszkBcYITU4WmJDgMlzECPGK9Fu+6hrKWD7r93WU0IxRgqjt5NXZoYw
	 //7mRfzjLzpUEz4u0/XZclV/CeLIhertf3RqWfZpMCipLnU+2X38fqlb8180Amhq2y
	 LzsvKJv4bzHEeFc3OWmg0cmbiKhIpPl6x0FwKJ9KpUDqsq98ex3fEHh31NmLc97VR5
	 tvEbX3h0UGBZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A970CC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178385451368.6850.14772670485076845347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3549746cbd9c38504bf932ddfc3490443dcf4517c7dd50dcff83ff3c578154ee
Date: Sun, 12 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783854513
