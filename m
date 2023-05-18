Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E9015A2
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 06:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC91C433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 06:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684390565;
	bh=5HvAkpyTZuVdsgoukBbx8rhnUTKlQhqHB3X4fT3Js5I=;
	h=To:Subject:From:Date:From;
	b=PVbbL7ylokH62KT2VE+uCBOlWFjiwxAwPO/EeNiHEB18FY0ImuPCcjf9E+7zsiUn/
	 F+t5kUm5lyO6iMePngsAWQpOWPCf7BEzAHI0FfyeEIzjP/DEryO7O1eC43zrAAnLsB
	 LdPR+8fcurSJT6rNPHnOUGp/acOGiKQPlJ1no8lou5Ib2dBRi0rBV5Xe+dtIEuXyAU
	 WqH4QQkjDlcn0mJgqL9OoDinlTQHswJcwsyeRUnjsZVj+b/qVR92/lfnTMGY9lklLW
	 S8Q+cUQt5TjCTkSMtd43E9qDMPneCet2X1zv4S0wXA6js8XbHSeQdjxs8GhE/nqOFa
	 h6xfZbiaYixlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB1DC77B7D
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 06:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168439056576.21420.4883102299396632877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a84b6e4d0240cb952f1291a48a86a6cc0e9ccff031bdfba7bb593e32916547
Date: Thu, 18 May 2023 06:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684390565
