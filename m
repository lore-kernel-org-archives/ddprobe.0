Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201D612B68
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXaw6/Vq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 840CFC433C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699609096;
	bh=jsC+m267La6kA8JbzEWraWHnB8lVC3LdNzt7PqTcPlw=;
	h=To:Subject:From:Date:From;
	b=EXaw6/VqbWlqZpG4zP4b9nz9Ss70qcqFa1vPnNkE+YQVGN2JqNC9ldD5NyMUVY7e5
	 nwUGcdzDr77l2zCFzIdn28i88VHnNWs4XBwjjhpIUdo51ocPwheZP4L+jNcHBrsYqz
	 nzIyj6NLaMM3ZJRLv7PmlxjLJ5wc+JFqcI+0RWgL1KQJfM9+a0YvR1oRTcIies5F8u
	 1OJxPjqTVrflv6aQIZdBU/XJo0i+50eTz2u3i7nIzQ3rUhsYfHIiOuRLsZeS8zoQyY
	 li2nLAhWlVrkkvrKAVQVIyVt3DyTHixwirxhfRE2bYBDfz+r6JH8KVGcsAlHq5Sm+l
	 Fw5z9S/uhTI5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C26C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169960909640.9161.3985210821717234567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e70d377b4ca23b4428c4d9b15e6589ec3ffc4f1a0cf369ff0a59af6fe3f7fba
Date: Fri, 10 Nov 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699609096
