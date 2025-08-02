Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0969DA920
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754129994; cv=none; b=clye53McHJLqC4iiKb2wPlbgGLfHODq0OuKnrUpXdyvwfBZkfrDx/0bTvm9Y8ik2SLGXXcYXSG6Tqk9ZY5OggY6W49EEONo+lneSLD0eOgcsdllQIY+NVXRwl3EFHF2c8CixHMo/jQi3KpinLV/L49W4vvMP8dmcCHk8DD2IG+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754129994; c=relaxed/simple;
	bh=EhfwOW7yRTkUSsuxOiMB4oZvw3kRXEVso9dq7wWoB00=;
	h=To:Subject:From:Message-Id:Date; b=Wr0gCQhBYwZ6J+Dras58a/3l9I23zejjIKrfiMAz8gMrBM/u18psk5MuQFQ9A0wyJq6C1ljDI0WzpvM99teVTj/JM2leBQ5jxtj9OqPOc+3+ykCn/w4jozA7OX1dotnsFiJqBqPSWD6f/tC9MLmV/8Em1fVnfRWbxwdE7Yv8FC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwaNNEf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwaNNEf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26D7C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754129993;
	bh=EhfwOW7yRTkUSsuxOiMB4oZvw3kRXEVso9dq7wWoB00=;
	h=To:Subject:From:Date:From;
	b=nwaNNEf/R9OLfnwQhPoT9FQGqtFoT9TUeu/U+whxft1nC8fybEoSyR7e6fg42QPpk
	 Nexs4OGy1Q1jDTqzQ5JUNfh47sIVxglq4NNtOZ/9o6tx2rlrfOnIpqheJQhx+ZWFwO
	 4Q8neRs/oLHev8PWPTzktNCgF3KvvxtadptebmP0TZgzbpytpMXDYuomjFQ6U0Y+wT
	 jS/XMaWcCJigPiyPHM/5JWuQx36sPuygozYOJLjELL/9Lmca3y/mE4pbWWBotT0K3/
	 cMIhWxItoi6nh9/DXHoSkJ1ixBNeG5gl0kya/Pjqqbu70I+DnvPdwn5lMErqaO3as8
	 Z6g38dTOoAksQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE70C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175412999358.24070.962723612640912029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e47a65a61cbdba905cba8e6e38b96e77264d0170ed5ab6474d47a6bad07551
Date: Sat, 02 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754129993
