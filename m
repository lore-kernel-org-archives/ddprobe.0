Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90C1C2F32
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 20:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD42C433CC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 20:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688244248;
	bh=iWEtMTd8B0N1OpFipWtiOFINywUq3dGmeKK92bDmOOY=;
	h=To:Subject:From:Date:From;
	b=EdS1BQpx0X4geawsfSpYd34WQ8USS+VqxwIXZeYtPPekSyfXyamhwYQOfXzFmweyZ
	 JS6MPNLsR1YdHiK5rvQMgkazuGXStm820DHzf2NWOeu5rx43rvEPZrqBOefkHOGzgG
	 5zU5xmqFATQARujtk4kPuqvWE/dX5rpB1lmwBvDIySZq/0YEATz9K2i2X9KIwSv0Iz
	 iyXt/Gcv38dZ1mhKI1u0E4waUz9YzcGthkGHHEOpJ6dTpKkFGHVY3IgOtPfrqxPP0D
	 ApNGvBWaqcI1s45c89ICvnJ5M4XDU2JFwr+n1+aqriML3Mmzit8DqJt++0GkUf1qy6
	 Az0IjfzNQPwXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0400EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 20:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168824424877.32403.17483072277590877960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f19f2294994c465f67ad02644da9fc2388845f76ecf46b0d72940ee260955464
Date: Sat, 01 Jul 2023 20:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688244248
