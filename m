Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE3234CEB
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 11:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BCDC433D2
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 11:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684237325;
	bh=Z3cEycxSl+H7nLjaNKYftWDQnrJqc+8l6kfW/wVLtAg=;
	h=To:Subject:From:Date:From;
	b=vKK6QqZxBVwHTo8JUhvn+3dFZ+VRXSDH9RQzJ8VZG+VchjjY2g224jpwSDaoLWHhU
	 hraUcnI0Y9MDoDlRj/+1+TrcB7rwDm3xsrO5xCJrMwee8d7KoEFZNyGA5e4K/mu3VU
	 FfjgdXmJuBtvyQNqUwkg/smfRjXptjdpX3hie1Wugq3ieEwm//D06Yy5wWbzMKzB6P
	 BaCaIUd+BFJE8aIuUvIJKNyog967F4nq5A6taAwVRlkcOfLp6rl4JxL638DJB9FEXf
	 4bTKbQ+eUc9TvjRzl6JZihAsgLc2NJiWAg0kCLVGGj6bK9c2YZdN2o3l81Sl8KxCph
	 l1eF8P4X7YVTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60F2C77B75
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 11:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168423732573.24347.17442855807576059713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d21380fb534d428066966b776666bddceee00efa6a6b12b0cdd2122194bbabe
Date: Tue, 16 May 2023 11:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684237325
