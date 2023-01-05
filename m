Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBCB080F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86B73C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672901487;
	bh=QUXY8b6dfVXkfujD3sHx0Cc/AjdUyruWn3QY78bAmek=;
	h=To:Subject:From:Date:From;
	b=YMlmxzYjR6a5LWczY3pmP3xqzc/GB5Jw7C5z4grwZoxZHjAG3I/Afp4TO2i9Bajeb
	 uRPqQkl8FYJX9bSFj6+5nRgt1ttHzpjcOeqr3eMrdJbIKRyn5xYkpD77mrfIWKMMqa
	 /aLg4HuvlfUd4vm3uClKqWCtZ+s7Z7mOuUr2oRG69/u/aQ+MrOGq0+EXvVshGiyboq
	 dldh9y5o8QLJ/hPWdHzMgCUznYd8EkYXdlqM3iZa9YobgxFeYut646TCBZgmoUf01Y
	 QYL5nXLbBi9IvndWYLgKN7PQ9fv2Cl+3jFpuAxzr0n4kWD2X6AqkUwD2CV9g0qF+8a
	 QFjjz1LTKDXwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E2EDC3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167290148744.23579.3851023555540573737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9f833a6c56c92bb69a38ed8080f111573a8be847dac32ae14e86527128683b
Date: Thu, 05 Jan 2023 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672901487
