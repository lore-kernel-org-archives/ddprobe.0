Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAF3386
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 10:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9B1C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 10:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674297725;
	bh=ETgB19mGuRrq+FLbVndusYhAsW+ow/eXo3AJq4fbttM=;
	h=To:Subject:From:Date:From;
	b=L/c0tUiKySmJ3AwjtFror2+tMp5nIEQ86u3eihaT3wRmr8PdzTv2SRgHuihvT/LlL
	 ocGNDjEVyJnYNI1gkuk/VCf3kaG2uG2oW0jMHXVxTd28fvz3/WtstSlwkmsYDG4mVL
	 36E3ErismPZcZLeCvoSgbXsh720tQynfT7ToZekFgQbkXkqivSvUdrZ7mrmGlsgWUe
	 WhxxjHTqRUaRrmPffnIH+9p8KBWtp0bc6x1J0A/G6vdKpKtthYYJ6THx9wWaFBksHx
	 tMTQgj4inv0PFfw+U0uEvgLZCb492ukpBsm4cXDGz4CpjTqvB9pYzwQSoUSt5d9asm
	 fEBPZ5j1eYQyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF523C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 10:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167429772575.8895.4862647230654993858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b26f98e2d24f48bf58c39be4916de7a8a7e55aa72c6241b0b890199075c308
Date: Sat, 21 Jan 2023 10:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674297725
