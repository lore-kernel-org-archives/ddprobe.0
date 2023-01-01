Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA86617ED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7887EC433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672554087;
	bh=ba+CrEzSpoDiNzn/wyM3YrPQg//nijP3JVq1KqD8F0o=;
	h=To:Subject:From:Date:From;
	b=GoBGJ05yHCbTf5CmcnARzvuSG7rMShSVzPq5lRQzz/FtVkbHUIBRI8WJPC5WEi/YU
	 Sbh9HGfwzYM4p/IQlAWUpB0ONEHUBXaX4pLJNS1ThvrC9UqBpg9leMtabP1fCtfoKY
	 LUkPvGz5Z+SyonJZt/jLZIV9/+SiecqfqDVopdR+zIdbnhCqNqbCp/Jj3v8+d/krt8
	 lZUGCnjjsband+8uWMKlJVUSGe0WOD8DWBRfPWq5QRw79XpXKnHsuD0mmGs1OxhEkT
	 XkdPm8PTdeKM/ITF9mX7y67SV2bwp9Az7Zx8+0WPtfUQ9yKUo1vazeDE2gzHCxdHDB
	 waPHun2P9GxRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC78C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167255408737.2014.13638399309027813561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb4517515d7f2271a31d3d5f4fbb2b6107a5c162239c89805ce892c2a954408a
Date: Sun, 01 Jan 2023 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672554087
