Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3817364
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F21C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668042654;
	bh=P4jmy2XkBV0vVe8jbklJbgEKT4iqg0DT5CeD42VuzQA=;
	h=To:Subject:From:Date:From;
	b=QW9iUtJATUhxypTcbuZFsuD8ZYyaUINU3vTkxi/xCme6tVHHfnxgAQe2USfMHc0xB
	 9nJovSkUtxilHJKMf1F4E4mh2oImOBJLD+//zkl+9VZFQJQPZOfaxrtzz3wAlHD3ze
	 fUIZWH71yFqziXmO5clcX+6RL+fg7wteWB+At0zzBJeNQsEn1p+RDMzpWQPAQNtXqC
	 Ue7G3RcMEbvSnGHIBWdCZOg3zgRiH/oc49Mamny8fTIw8LJpN1iCVHG07A4ZUA/Fls
	 s7MD6soj50vZYXSwIekGmCwZ63L2xVLurNWRrKBMUfQO8t2Msk7AAKTgr5+AbwktQF
	 ZgIXlVf682aGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BD1C433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166804265434.16369.12654910549093922662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d87afb41241cfd634143b639b5bd16b4c882daeb1f6edd5eb13d534220c4a7
Date: Thu, 10 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668042654
