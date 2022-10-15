Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45DD3205
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C3B1C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665876653;
	bh=YtH/MTfE0KZhxom7u1P/iNnS1302HTRZ58cnHDS/O9s=;
	h=To:Subject:From:Date:From;
	b=jdU0QKsWouUcmJtsingQghflwSqHuIll8JsU+E6/bctuCl8lmKDbezC/a5/Geo+lU
	 USd3VWrztQiCBfOjTzMaW/oJYKmQDR83KfulHq6UTuJtX47q1s9RMtM8FIBC40o8BC
	 WMyTLy2kC43/6Z9LcC4iRUdR377YAHVrG5LE4QlV24A0mYDDCvLNqR8+53I/jUaT9v
	 +Np1e4LEUx5CRNqaLKwnLdsvJq5HBOB0zDtn5zGiLySzMwKjWDoF/F9IirrcAbxNiL
	 rs3rnTeUrVQAxggy4ijI7OhKq8h2la0U+ZAmyQ2N7YCPfsd6buH5OHnKS8E7xx8XQ/
	 uILmmdYVQdC1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F39C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166587665331.18594.16417985643420462406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63cd4365d9263b03e08b828940ec9698f99777656a4bd8538a7cc1c31588c06
Date: Sat, 15 Oct 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665876653
