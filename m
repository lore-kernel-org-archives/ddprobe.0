Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3AAF2F27
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 863DDC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672929087;
	bh=YKTbEu2kujQgFUM6I3h1aZCY3LqqELCSX8S1bdqnMZo=;
	h=To:Subject:From:Date:From;
	b=DIe+EiEE5Ff+CFWkFJ5aJDmYyYgcObsXWjExWVnET2AfW1sxzvQ8gRtnFpxqY2LR1
	 RU01fuFrI8EEvmPm8nxMPfip6W4TWPo0JpVRHdf97XcacO4KQh7YB/HY7zkzo50sa/
	 08SQbUNF9Lc11s4tMCp/dP1Qinba6FJXl+A+n7LIUtSS/xOiogTJjPX97uqBtVJSu9
	 F7FABAfI9p1OviMKYqevA/nWl1SqJRiymJpu52VjYWb5DVjgSDc7gACUTBO5ZbBi8E
	 DJuq2678oeqLOLrQc5sh16KrG45HAWaNW6l4uWQeZGiKcGgiwRokf0/OmE62BuihUH
	 voBE0oGFzgg1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69F83C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167292908742.2690.6864324580256240655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba8f134d6ec6a0c18bd5fbab99780d8c39635105dcaa2fc8a795f513a17f90b8
Date: Thu, 05 Jan 2023 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672929087
