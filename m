Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 960573B3E0
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 23:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE83EC433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 23:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686179586;
	bh=i3oT61ztQ/bArguE0XyAITi19Jc11muNmZa7A37+vIo=;
	h=To:Subject:From:Date:From;
	b=CPY6VsBZTSpKI6F9ykVLTUNazV5OZ7gYk4fy/Rpazl6dMysLu0jDIrVsTTnf15LDP
	 jZbD0Uluj1BtywaKZmNRqcmbvVN8J3l+fjoR78BsgeSSpNJ74yhRemwCF4bz5Ct6d4
	 Pu1QMGGpx9V5+RDVKDl8j5FMm9cO9BjZudViQFKstzKdVilJnro8hsE0GbLK01sX5i
	 W5aOmBfKc5JifSGBOIxeldSsY1Q3jh0vW/U0Vk9tkjxBeJWTSakDRvJv1K7dnOTeWF
	 gc+x9Q/nD0JcC21mZ4AD/0TO3VLR4ddmBJHsOyFlEV7Qe3V+WdMV60BZLBWXVmMi5u
	 gJqX5RBheFvSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1F3CC7EE25
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 23:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168617958585.30339.5286634932315751089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af14e36626a4798c0bc5c379b6ea8dfb4b890990b10f313f6d52163144bef473
Date: Wed, 07 Jun 2023 23:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686179585
