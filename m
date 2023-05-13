Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405D122603
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 14:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D496CC433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 14:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683988685;
	bh=SnNCMcbuQc9V7ckrAPrVNLPUM3Cwv8S2XdkUY60SMYo=;
	h=To:Subject:From:Date:From;
	b=A5BJKZyNxztn1KBFuM7ziqvvH2dH/Fm1iFOZAYdcwh/JkIp4mzHg5TiR71Aoh5ioe
	 PWTpM3VNZ9PJNyVd7JaUKa6N18DUG0c/dl5EwjnIgKDtsqD032KxyvFIiJgxc6iHF+
	 NNBJO55X8w/jcgDWmVh9oMJ0OdesPGHpZe+8ciSYLlQwiFCAPUXJdoCM0gNXIHhN3Q
	 ToxcJSMR5rIKV4//A4XmTIjR6ougLkPYoxc0fjfEiUrEOOoCFDDZZn3l3c/I0yhErm
	 5WGNq8YQ4/vmncG346VOFJ07OlF7EmIBJN2+mXyp+myOxYmPxDqdRxq7k1GV9HKc1/
	 D09iJmViS5z0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B383EC77B7D
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 14:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168398868572.22030.9346346692704812947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 265615eb6ee8c6a35ef4aaa80b1c8bbbed3191f72103d00175746bd521f42696
Date: Sat, 13 May 2023 14:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683988685
