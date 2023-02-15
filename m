Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC7415AD
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 01:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB41BC433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 01:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676424425;
	bh=q+S6Ib8QRScoon4uMZe+EUUDPRjdaa+vUlLEc7TLDKA=;
	h=To:Subject:From:Date:From;
	b=WUjcQ1zE/pmcdRM7pAdXkCQihb/OK0Sm6JAe3ilfLm2Q+Ahf/MqjlK7A23UWiqL2I
	 GYwlJYQQb0E0KTYgFWS55iwvq1pjZcflfFPIHDwSXd6ZPesiunXZvQZ5tf4rYGUhG5
	 tTsqfW1q9JLCYCjqnvJiAxBVCkVY6SuVxewcKX/AzlFFy6Ns9Xb8ycXJdfs9yByhVT
	 0MSD3sl6I+Ey5H1O0Jpv4jJOJ/WMxK77AqiH0dJOcklze9VDjbZN3j3XSUkhtIJO7y
	 AOESVCbPMtqDXF3c8ULXenb1F8zwrr1HH3g/LEC6SbRSV3+9/UKUTGloDsINAtkYtN
	 41eRfVl6qp0NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35D0C05027
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 01:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167642442572.11092.16777070199235457739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff4c6560ce7f314f1e404e90d465f6a1f03073efe15d13b994970cb96823ea9
Date: Wed, 15 Feb 2023 01:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676424425
