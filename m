Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D85317D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 09:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5274C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 09:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674205325;
	bh=DGMP/PR1mzPgWy25dPbgBUhfCtQUxj6oFcH1qpI9Rko=;
	h=To:Subject:From:Date:From;
	b=X3qb7a4W3AFqz6827CusHpSZhYUxPkTy5K8YBpKZCGAhQOq97jZ3yW2IUCWEvzDs6
	 cJpwFcWRhvsTVGX4fnADL7VwfhMZXZApqU+6efe5p6tIegluHshjetEtq5JIFx4GRI
	 pNzh++WoPG2Vr93JcH+geBWbvXLaHVk+JdEyFpc1v2dt8debGYBmbFJT0ZFko8Yw+t
	 E1/eo3Ne3muxQ2oxxe+jcEWsg5DdUbKM+7eJ3yHhcNuQMYNhxxTQk7xrS6pI4F4PxG
	 n1bXbJrJEoS9faHHit4LKUkK7kh8f5Fb5zVWHzgm9XmoiyI6ms+PqSJ0lWrMAJBpxE
	 EPO0CP2uUZXmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6433C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 09:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167420532579.10617.12203997219404301183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a99fcc566495bd6e4f7a7e8a5b6da46eeb5aaae5be4a7dd90cc492e8f219488
Date: Fri, 20 Jan 2023 09:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674205325
