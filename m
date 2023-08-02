Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8D163B7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 10:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEC5DC433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 10:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690970529;
	bh=BmIv4PIvHLrJTp0wH9rQxYAy1yCkIJYpzoLsVkZuvro=;
	h=To:Subject:From:Date:From;
	b=jrGpP071ngwH5djfKYnQxOSKSug9VY5LY5rCf1yLj3FH6Xn7h8+slMdSkI04JENbh
	 b2LIAi1XxHutlL1BVV/2nRLwYVv6s03PbX26YnSwfRqTRStMCbE4TW6fcqCrcFCDG1
	 6Goy4bk7WpWx/rVbsEoghGZwi91BammxXC5+8GSGGCqhoAnmvHMw+fCOrZAIc3qB1s
	 0trwDiNZme2EK8HbbL4IV65voJ4p+fpIok7QkS0U6ZKHVnTZLIGbLGmgvhj+K2JjsT
	 eFNQIfSBtvyTdR3q3f+79pLR0lnW0XkVdMBjHXjbFQnG/K0fRoa/5GhJcjnOEjJcKR
	 tyJsCT9B8r2+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D37EEC001DF
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 10:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169097052884.15142.9350898121062605602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3974736b8f1d82caeb0f556053ff9ef74d9d705c9336c9101f526eb4b367156d
Date: Wed, 02 Aug 2023 10:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690970528
