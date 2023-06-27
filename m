Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE26EA1
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2035C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687839788;
	bh=+YgAzLQkVZ51NHnvphNRE17eB+DT0/+GHQ+p/ZLby0A=;
	h=To:Subject:From:Date:From;
	b=VtKP42NzJ6ReTsoChrem++QxyMFa+/hC6IbdrZ/nFCrFCl18M2TbKoizwMnD5yRry
	 tDu7W4nNKax51ZYAhz+S+25Q3k/T+h+TRbYwi2veH7K/xVabhQpY86EkQYXW6tkukm
	 kS7wJMib8Vpq9uij3g4n3W2GkAGwo+aOhSAr9eDZu100pfSqE59P1AFg9CDd0gKpqG
	 AQIsSLinmI2Vy8T+SDrSoxuTKaEW6Lj3E+DKBph11uCua1pvFOy8OtCmP6gnK6ot06
	 f9TGZAJYkJm+O4gevnqZ6oKJnvvRMjtJX9+vJ/YkFzrYh/cDCyxyiqS50/r50IjKST
	 aJb7sMb/Ic1AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A27EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168783978872.10115.7903861153862915887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1570ed013a1ba538b6a8764ecae23e9d965ad92173e50278dd64bbb8a79e8714
Date: Tue, 27 Jun 2023 04:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687839788
