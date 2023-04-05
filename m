Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE897470
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 17:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37D8C433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 17:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680716825;
	bh=VML7ZA6X39VEnjHbrSk3t4wgstoWA0sEeeeQfNZiyjY=;
	h=To:Subject:From:Date:From;
	b=BrA0+CP4/ISZA0PZjPbqd8JVLyOyALTZtUo43mDYKYT7UITeEqgAgpityxUuctwn5
	 4Z75jhxQZ2HgsFgzSJCXSR4TjnXRKRsIAao4JfaZxli3iRIXl7HIEH81pfRGk9GIHe
	 RO9chZy92qXopShGyDWGggmGjGQSZOdqm1QhTvrFAJqDHh6WQKFFl4LIOniy/Yaei2
	 2pKleVIwIczrvwsylkK/TfFPpIOGXc7B7sSSZHzh4N4ijW7WT2d8gr5knjy0eae3rG
	 pR+gq15DrkL0O/UfeEFDT/Jht9Vg9h2gDyo1hbBIAaqbO5hdtZKGk6EbFXuSwoiPM6
	 cIdH3VhUHyYUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB2F7C76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 17:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168071682575.15463.1367544588426359000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d163c5d85a8724ffa3ea52e6547d8e9b35162721faaf17c5258a1587d203c64e
Date: Wed, 05 Apr 2023 17:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680716825
