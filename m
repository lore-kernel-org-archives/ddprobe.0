Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A6A4438
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D42FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666634453;
	bh=Oh8l4nAP9J9pt9xcKPnw4KLNuNPHwWbI7+ql0yLYwr0=;
	h=To:Subject:From:Date:From;
	b=Sm8HJb/H0JTUpJeJ9cPT5B08PIBEExZC3VReEkR6WccCvZgL5MVHG35PU+5lh8tZi
	 o+XfNlaGN46wW79cKf+TugdLW3NJF/DQmVaewq5yr3dfsIhtJGfyyvACmNDLkahhA6
	 ZtPUx8G4X4OEG9rQx59jmjEeZbgavmlcm7k35Aez1icNChYnIkKO/L3cOxZiS/2VRd
	 XDIlYqQ4I8K9h1/ihSgAmJaSrq8P2CMgF/7SIjn3uji3PF2Y9xSOxKYB+OUNzf+tTX
	 zZ/vASIaGAWI+8IweP4mJfivwEBsqlErBqAq6VXcXwlLbnU43jXf73sRFfAQHLUBPl
	 Xpk2INMvPC11g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F51AECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166663445331.29917.4849970741995794297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04ca2ac411355a0a89850ab20154f04b88bce5d9828ff3b8571729be1167287
Date: Mon, 24 Oct 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666634453
