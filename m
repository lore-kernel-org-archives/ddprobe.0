Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE2B2561
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 13:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5BAC433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 13:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674309125;
	bh=Qy7YTfYNf/tCY0zgss5a9ad9D8UzKjGyuTfHo1rZv5M=;
	h=To:Subject:From:Date:From;
	b=ti8cotrwPCGRo8hfKY7hFysrXR/fpdACM96F7bd0oggvk6Bbkjy4eZtdKGixiFYlL
	 Y8cIoxCguLOF+1mO3A7PjusmFnRlHqEUJ85JNNVI1hX85UQDCOH02L56r06SJ4vm17
	 XGe9JTo/iAWasWFnSwlKspf5nKOl7c/ikIsiGf+RTL7BgNtuVSKik5KfQhjZ8xvVON
	 WXgM71WF5KS8DDMXEr0XabObYiFpgvVi9ekNAN9xFNQacSVrQNG5z/e4sgPV3Go92E
	 7ylZ9pH4trqsrIdMqX3Naq+kxZNo6Jtxn6GGGW4FDE6ZsU3Stqv7mp4ESy71pEIn40
	 F9wLBtRBdfL5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00BCC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 13:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167430912577.19778.4874996905843739299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea538431bb95a37bf0142f319417f6725db97e66b00d03e1849961722e102c90
Date: Sat, 21 Jan 2023 13:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674309125
