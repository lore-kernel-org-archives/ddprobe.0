Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64770538A
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 17:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07884C4339B
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 17:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682531226;
	bh=nDEQO/oU2RRlLQXEkObGA9ZbUEbS/9gMZc/hDvoU6OA=;
	h=To:Subject:From:Date:From;
	b=NrKcsXn7NPMvZX9ywUYyClQGpBeluHkBn8MAc8Iv7JkMCLgoL0Z67Vgi9tNdgHEFi
	 Vkp1g9evpIM+zQYX+o8cYJuLMQsrx+p2pfA5i3RRZdtUmFmgJqDKTJOAQvAbkhi9YF
	 n90ygNcMQNFL08kVI2BYUvmnENN4zgM9hSeA1lyggLQYCKa3WE9d/OLxhQQ5ehuS4U
	 CTvxn8MbZsSiZRJNP/UWpG+1LA8trI/2JKf79/3L4Dlh64DcDqVkgYsFmi+P3XY8hM
	 BbJQfvw51bASOhXxUYO+vD7Jdikzx6Zbk2YbL25tsZZ55lkJpOofhbPLAm2P6gyP0L
	 z7i3ShVO7JgYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C966FC7618E
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 17:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168253122581.3321.2736219258130701521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40871678f48c1ddaaa60234a5df5ba84675b29433fedecd1cb1fc488b3e54db2
Date: Wed, 26 Apr 2023 17:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682531225
