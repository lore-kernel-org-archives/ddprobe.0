Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D0C566E
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 08:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BF6C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 08:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686819548;
	bh=MY5ewBT/sirOEulrFjjgz0T1tYkJSd6Da0u2UU/Clb4=;
	h=To:Subject:From:Date:From;
	b=oHTbTXSBjad4Vn03/GuzUjglCoK/3S9bdJjRbKhsUhA2FwTuIFi9UTQlKlk9ccuHP
	 5DwMPw7wl0eybYvD1mHrNQ5bVV06ZluMtv2UHzocrauTLRHalaoP8HrR6X9ZutVYKL
	 +sOc6AmWVlv7Cg8WnpkAtz4ZEKkE/2eW55VlfkCUKdrdrRN/xOP6sLpd2sU3Xdk719
	 Vu9IGhFTE+JE0IntLh24nnOuWpcrXVkZYZoOPLi06SrdI8sqC+0mYwKhBrtgxP2sTd
	 p2UrlRnY9csHKFFuibNUU45XeM3bmC9WZOMTdx7PwbhrKvXYgNwpaGGV/NsNUo25zk
	 PAUbjKbpYoTrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31C8EB64DC
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 08:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168681954872.28595.1925820106736496169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2719c8af355866173cd94cbab5edd999a4660f830e2bdefd6f9a975a00a886
Date: Thu, 15 Jun 2023 08:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686819548
