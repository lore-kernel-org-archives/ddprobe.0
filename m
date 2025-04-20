Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4220117A2E8
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745192396; cv=none; b=QxZumpyer9haFi0+NY02dNwqSzDoDFqJg0aDPCL8J3WlFtamMbOkwCW9BA58z9Q2Q+S6JFjgLTae5S71c5jx7d49RMVt7NfJa62EZ8EF0ugRkqJjoYCIE070ArAbBeetW+6eHhGzfBbq0ih6St8bRjvFQmkYr/MveRJfNhm9VLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745192396; c=relaxed/simple;
	bh=lI+uRU68h5YCSQXy++xxubyBL3AhQvdhSmhaTajw+Ow=;
	h=To:Subject:From:Message-Id:Date; b=uzwvZyJmiqKVnMl6MeshpO8aniCRXHji1WilyMoPxTkdmx1p9PbTwCNVIAjrtdEmhjz6amGRFOt5UY3FXqrQwYYMHqmgIr8v8OrexdlREnUc4PjPKd/8P7TGPIBFL2Em1kP6ckrL/mLOijuKuXF+ukkp3faIJ/OIi6acnxYXjCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPmgXsEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPmgXsEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD777C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745192393;
	bh=lI+uRU68h5YCSQXy++xxubyBL3AhQvdhSmhaTajw+Ow=;
	h=To:Subject:From:Date:From;
	b=XPmgXsEYM2Ttd3KgHlO8uLWzHifVRtpWZ4hSLr0mP+/rREas1PBknVB4tiT0qwdjI
	 /lUsKI7YsJF9jOPDHgGiWk2IeScVwnqHZ2bQmYYMnVy/DL9cvWngOEXtyP2IdrSSuu
	 W6MlJsYXn3O+Vl6aecAK+AxmQA9lfm0f7ND8P7V2nShxq2jBqcyFgz64nd2LYdqZJq
	 68HO5vAljhHmkYABfqy6nsQUV3qKfK5UkRSBje9yLCtkKrtJ9Ks8UjkapZxuohPcfM
	 Budr2kssXJZIXD0HbZx+CML9WjzUU/kCfRFPDFBNIx7Ddw2omSzVqxCdYXViDZY6vj
	 hE9k2/cLQjJfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998FCC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174519239359.16069.5501159174114186414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd2827101930760b2c876595d5ab66d57cffd37d039a0dd1c6221805d86d71db
Date: Sun, 20 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745192393
