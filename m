Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B599F1FB3
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B00BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665405653;
	bh=PQ9xdCtK6DSRieau4alQxTOaQ3IekOv4mHxvgEXxnVI=;
	h=To:Subject:From:Date:From;
	b=fGXAzhsS8WyOMoPnfYwjxQe4w0QDJwv35pxvAKT8D/IM3djztR+7k9s7Z7FVq0Tz+
	 sbVYfaDQzGx5AkVlC2SK6W6qYrj27zdkh0gSxv9kp+itBpkEdf5xL70Amp9dPlLZJa
	 G/T2JUrHd1WtoYgBqEfXd4xcBtMWrZBwJW6EbNxJQ4G0LQCYlXRVoLTRe234Ysr/X/
	 eLjW7N9bG0DG0SNOhpTgskZEThAWE/2KlXz5Fho4YRURKbn4Yv2bMBvjssOgJmvr+n
	 g2Vp1vtoUC06XffWftkwPqpKs/oa3QCxqWWVXYZr88JbCYA11DtpyPOM3JneyIkfSl
	 UsuJzv5EEOAmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D7BC433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166540565331.18944.4448437316655890181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e21c46323763393505973be913ac62417eee9ab588b5e646e605abcb2dc0a04
Date: Mon, 10 Oct 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665405653
