Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90FE5A55
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 676AEC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662085853;
	bh=ymMktae+/Dq6ssLrPThK5zG9KO9YBzrJ3TFu8UVfzw4=;
	h=To:Subject:From:Date:From;
	b=pzqeHRKnvN7K8Rz4rp5SApUwBWFkInTTqGuvesq6ro0wEX48wgc/Km1j1n9iMTj+H
	 39B/JbElHLm+iHSodltQA4pL+smZV+4PH4bLLDlpMG3e40Atfx0hQgRuzl1zUFbNKX
	 4RwNdTm2NYWppx/wcXi+vwIZzROnNvDih2MITsbVP/3DXuRM17DpgKU+6GvcLYfKNw
	 V0dt4kDLBn6esjVmfpeDf9UMnfOmAJQFfDkZ98kBGJOlxgyC45z+nbo2guV50+F5TQ
	 L48vIONzTqrHhDbp9PTw7t4YKbpV4uwKusXtzPHtw2xks17yK3EDpP7GxC3z/c6iGp
	 c8w8eA+wdrSew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 519A0ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166208585332.5806.10748757328832652496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c1d71f4480935439e6d3dccaf0d0a8b05ce318256c0a9a9a617f72f7de65fc
Date: Fri, 02 Sep 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662085853
