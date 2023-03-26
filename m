Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6423C20E2
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 11:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B676C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 11:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679830326;
	bh=VP9NHGviyha3/zVTwb9rkeSwKgpCijObU2d8/akvXj4=;
	h=To:Subject:From:Date:From;
	b=SopRYstPV0D+3uUBSzwg4ssc/9zwWeYBEERyZ6BezxXFkLKitsCKbj7SoNO7SIthy
	 fkIJjciFyzciFqogDiBSEQkX9fZiChv5IOWXjcbzWXdoV28vzooqrfQBv1FkRlCyZX
	 XKmTqxXF5ld7NZLRuB3lWs+f35p4uNtNinem2S7n0wZZGK8fF7e/lWV46WbsUd2vYR
	 9lniUQOVnfflFSbHPETd6v3GNMtAUr9P4i92Fwm2XL7e60buJcDZHSa9J/SZrGDE01
	 2L4gUo9He7l2IUTf3bKH7S+qSkC9N20OXNtZ+GV2guaMu0w2+IJ2LmMzIhJ3mwKj8q
	 MGqK+eS6wc5RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAA6BC6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 11:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167983032586.18762.6912023994800061309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0072120aff5a47884a6bb74b9c56a52f48ab4ad004192a6cd78ea9891cd0d3f
Date: Sun, 26 Mar 2023 11:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679830325
