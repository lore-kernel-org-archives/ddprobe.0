Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9EA1EA6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69920C433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669026054;
	bh=jlir6VjUbrjNDI3cB01TcZjc4+efG2/CZ51Rf0LXcQg=;
	h=To:Subject:From:Date:From;
	b=NtT/MWdU5cp2Di6ggKfsEc6kC1o1OEKcZQyTrElCPkjGTZhj+7E7rY23wqzH9egB3
	 P+KEvodKf+OZIm0N8NStPpwcfKdV810m2pte33lrZWxedEotGDzUqZgqwFTo2olaaq
	 vcrRfU1jhrTyHrK4TFtQnRIWA+yj2MQVLe2L6kV1l8g84V/3yZUHQH6G7Ll/1ymKdi
	 9tkl/XxkZR+LNdrT3P6KOQ1c1JqkwxX+aUmD7Z1TvqkD6LWENPMjdWiZQQs5wAIrIa
	 1Ra5GK9nX7UeW4n6GXo8lG6c3KftKjThq8qdNlWVddGrZ4R5vNZVeJkWCPi3AedBDe
	 xXY2n6iio0lhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE48C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166902605431.27385.10433447119020039763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf9cd963a3eb66533d5d613f0aeae64500c7bdfbce6b70f4e98407c9ac5893aa
Date: Mon, 21 Nov 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669026054
