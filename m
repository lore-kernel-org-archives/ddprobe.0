Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88BB1846
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A8DBC433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673007687;
	bh=VSRkWzvjp9tXJC/JyQR9uM3t/01aysN2Kb+MERBdQrM=;
	h=To:Subject:From:Date:From;
	b=Fl6hcVgu7gG4WAzVrI3LcMyugUcA6BFTd99vOmrVBojh8G3eSWdCJU/w7/VFxVxHD
	 1elqbcwkHxhwFEoPtTlEuB59EgdG415svJJ6+e/rj8rFp9g9r2nMp2nK/vFE+f84hw
	 5jKvABdcCqu0FnxrKM9z249PIrBnj2YgktcGEkcS3jCLK2sgJ7Htxh3iiQBXeQYzQu
	 UrMP6vWHVSdiJnx4nLyGfIH3+Pp9LsKugCKm8ez2uN8ZrsuC/t96CZwgJ/AIAm+hmY
	 F1MioCBZxEbtgQz6QfUfFQzxer2ELfQYBT3tnsUSjavbYaRfH71hTJKlYjsgR7qJ/m
	 pZDZryeWmabOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F071C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167300768744.15419.9428724437743181347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d5f6313e0b0144772701788c30e4e119011b4446e91eb1571269cbef30c9c5e
Date: Fri, 06 Jan 2023 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673007687
