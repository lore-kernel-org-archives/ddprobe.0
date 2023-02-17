Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216DF79EC
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 16:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26E1C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 16:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676651045;
	bh=EJas3JYRPjy+ZOEiM+ysJf1X/JbjuF2Nr11Ja8ZWnxo=;
	h=To:Subject:From:Date:From;
	b=IUW/jI23Uf+stJGKOhMqYrlJa7sfIUyQg8PzfNiagDR0gygEgCBSYtv6wIHFpa+C5
	 mflH0mqctDBCR2foDnfZkSwd6eNPLzXuey1xv8gmGVeL5UXAeHMiDNGTzo4ISZpjMR
	 qcgti6k8el8GAZ0Pv5Eu9DXX2ydNZfpxRsYvnZwrINaL7/MU5+Hxr127QgdmyWwo77
	 dfYoGbELgyAUHsXaRc+Ieo3pCDoXzW0pKqsh33sGzvjgGQuuPBEWymlNB4CFENdmn0
	 ShfS/6i4oQ5oRJJQ3n6fgd1uM6H0qCZKZJUCxbU98/qjZsNitBJ8OJ5blRqDRDy3sa
	 Adap7FjBeslGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAAA3C05027
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 16:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167665104575.29618.17070447011432216226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da84666a703d691ed0e664c108c7808869a28f7bc2133dbe1a481eb8cd576c9
Date: Fri, 17 Feb 2023 16:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676651045
