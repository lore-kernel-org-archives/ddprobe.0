Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71DC194
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B84C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670289654;
	bh=+KVGuk3CP8+WdyQL87q3Odyn5rJl9vRafl7Belt/K1Y=;
	h=To:Subject:From:Date:From;
	b=LrUBHuKdomBxPr7y4Gv5NdVJzdEdW5KsT3ef24og9z8gheSVghwqR+4q+FydRwrTX
	 1xNaBnF7N6SVVFX/YSkJee/DQ7j0JlM/uejHCm8f0mzh6LseVkDMaUZJ4KVga5mgSv
	 AKXoii1nqaQG/tXsgwjCSlGr/TIfcw+EcpVUlENLoNqDgrxbIiFpvIHSP5Hu9XePX0
	 SFUQubhKO/RyYjiifstWk5lyj38WXD/zDEaAFIq5zb+jutOOAThEQ6VXD6/mAh8BAN
	 Na0ua8TI/pfW/mRuY3++x8Hh3jg/js1BS/le4CZAFK1cqWd3+JWpIgcLZKHHsoZSUC
	 bFwqfX4MHzKJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5424BC4708C
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167028965433.23858.3957059369853119922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5944d7e6bc8b52debca0a645c09f30c4ba940723a6499de8fee57c1bc014ca2
Date: Tue, 06 Dec 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670289654
