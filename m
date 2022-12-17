Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D551436C
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BBC5C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671273087;
	bh=CX3urKUbXoX7vDst4ElPAWXYka/QrSb1utaeHs8MIFU=;
	h=To:Subject:From:Date:From;
	b=k3+4h/UNua8NU1JtOcDRkmd+ILwN+Og01XGCRvyzSC0eW1DZAFneb7Bopydn0anwB
	 U9RbDq9HfW6Qb7eNu2H2ZcibvwcolkT5K5vsK49G66svHBNyC7dG3tq0K1gsOhylKk
	 DTHRfUSo1bPURQqJ/EHwWbvot0vrZT9tb0xHkfMHwf42dz5P7UTnqo8wcJ+Tk6kCbq
	 HNLgDLnOCmS1xGCM0tH/Rz7t5vJgodN5GsNGnZPk5tOYsEmJtDL8EdKZO0rxJdJeqe
	 3xyRy9vE9iwJlHfwt3psjcllTf8WgP9fXjZW0NQaBQOdJG6R7YrdXhd0eq+B6qgIAF
	 IgrLb3HVhp/9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E009C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167127308737.10775.3220607311549311137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbcae3efb29c32b2a9985030e209a87f3ec6514276f8734b119682cecceee403
Date: Sat, 17 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671273087
