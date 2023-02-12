Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF86EA0
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 01:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0325EC433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 01:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676165046;
	bh=O7hXe55NNCjjMLSf+/VVFm92j/UAc/NQjiIWtXxE7o8=;
	h=To:Subject:From:Date:From;
	b=Agh211hCFQrYNLTRwNpvcxpiiJMVGb31+tBKq1pO5nErkuKQfQU8sJXs9Se6kCShY
	 Rsl8DLx3IaOXCKUNtdZrOR3844kxIk3ygrLGb+Jdl+1AM0eoIZFq5JHe6hWsSv3AlN
	 w+SYLq7G+IzVslu7xK9t8JlIKNS83FPQUjuBiPkdbMHIoDIeMBrRHfC396inF9y+LM
	 MLjbUbm6VMZ4CFnLGeOBSnsIgq5Oyx45690R4ym2ApshxkaYQNvvxKzQ8yrw2miZXM
	 +SDb7msXBf/aus6W7tQOD+iudWm3cNaHTuWWFINkX7xkrW0VccmcattanUW5UWtr8r
	 3euQvFqLh6iSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D85F5C61DA4
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 01:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167616504583.28193.7633746607972894492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9ba1069898274b97f61420dfc3dc4f81cdcf6e5aea7d7d391db28a04f47d2d
Date: Sun, 12 Feb 2023 01:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676165045
