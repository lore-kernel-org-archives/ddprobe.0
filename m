Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94E384416
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A83BC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665691253;
	bh=RmBYqg/VXXsfnV+OQp9ioOsTChchqmJAxIOLi4gX3L4=;
	h=To:Subject:From:Date:From;
	b=qZKxBiVVnOc8ufwo34NctM2ZKr3lyIZjyPqxUjR+IYK/DAOqWs/IhC1YGy0yxcSd7
	 n51iaHOXGm8Dqhli43k1Q6NL6S0SNqaGu7f3KIptUVdLYiAz8vGTIknrq/cpedN62U
	 4/gffQNx/HSpcMO04+6nAWTT4HtruvOyWUuc/4YB6RJtllKZ/xegvgObR8MPmhccU2
	 jV+Hsy73yKu/dTXMtbclVwMsPWdbhn8Wu+x3WgXrJsu3V2i5ZyRo9jf7KzGBFvKLnT
	 leuVTLS0SJScH9+IdQpQLpzvXz0nw27p3iJD4ggCfK8kUdwve3xKNcVCxhc5+e7VcN
	 rXf8jwqDNPZpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A77C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166569125333.2745.3501729084668841125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ed0a551f312c5c0040cfb133d970700831d2843577d8ef061d4f5e0be8e1dc
Date: Thu, 13 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665691253
