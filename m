Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A671119
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 07:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDA1CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 07:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683875706;
	bh=GKXCiqDxxHxaZqNPp7jNfK6DJ/Q5aX00Myeura812DY=;
	h=To:Subject:From:Date:From;
	b=fnIH5qFI7cnK/ZMQd83UOHxwWu1JPXOPplMoc21LUgdYJI3inaNdk9IOrkXjx9HmS
	 C9ctepwcheE66BpM10PZR/vW+WcJBeHh4CSUImzLyHdDkK1dD0Ftc7PwhmCxlwS9vU
	 Yr3tfNe5+GQAuL6XGW4WsgzIk35ghsx3M9AabpF6n+MJ0Luh9xirBSHVLsRppkv1u4
	 8Kq5ag/KLN344QPeBFfTuYIut611ciUDwEvEFBpREEz06PBNGBlS0mcKatFmBVZbdr
	 MPp/RgYB477Q3TcVVgQOdjXo1YLDFzeQuSYOHMACInyZhVfhE6K7Mwcn5H/KNzUHc2
	 PMLmRbIrvUM4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCAB6C77B7C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 07:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168387570582.11798.10748047365454996187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754cb78ff45e2fda2185d26075be3892ee2458bbc93e72311d688574dc39091c
Date: Fri, 12 May 2023 07:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683875705
