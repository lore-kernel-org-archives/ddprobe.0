Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0C519995E
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746416395; cv=none; b=Z9D8Z8rqN3h1WuWOEePuUrKAa8IefRlFrooI3aSc1XFJIYWLm0x2B5hMII4rfRcd9bKJu34ztWIZ4n0H3Ye4sWkMbOdt9mN0M/FvFb/51Ya+1W9SqN/sDEHhwLc/lMxCTo2TMcMRlicQjvKb3w2chJCG6dt3fXRzW9D7XJHmv1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746416395; c=relaxed/simple;
	bh=6bb9DiJOVYLWga5bmLdbKB8mHqqnm+kDTBjsS+gCCRk=;
	h=To:Subject:From:Message-Id:Date; b=Dn2zn6koAqbanRQIs3l4kCSxCmnnrhMcqIdZzItxwNE9W7tIMXYsKpu811u8ZaQcVneme/2gvKoYbLbL5HT0P0EsrBbftpmQzL7f5of6r/MfdERaKcYnhUoStBmItDCHNmWPdHN/sgZi9blqZYb7LATJHPo0L9dBXi6RdaT1Bac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJ/LSvnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJ/LSvnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA49AC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746416393;
	bh=6bb9DiJOVYLWga5bmLdbKB8mHqqnm+kDTBjsS+gCCRk=;
	h=To:Subject:From:Date:From;
	b=hJ/LSvnNByXoVxR2Rd8tj5wp27fEGZDSkqFwlaatI9UDQ1G9+E3PHff5dexMme2hP
	 yaLjBikisvw1z1ISeOmirtq5FqMcZvangOOlbkv+5WpjNuyxK88DtlfMs7fnxFBQyY
	 xmpr+s7TZig4ESu8XLo6Kh3bPSIQavCY69WOgLuWzz9xli4lI2nhgHO+36YMX94VyE
	 khkTfXsXExylOlsckmDvs/bkbwluhj10qzdnKDzWmG0jptjLFDMD1hJXWnB8Ev4qal
	 ZLOhstxfAfvHCG53R9oFW9TAWuGeY03y7Biv/UMDGjU9YTf4IcNBgSH5jj9mKqNXaT
	 vHX2RXqvEKPkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950E5C369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174641639358.27266.2876306787382438881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae7cbc71b9f2309ed17b1c6ec17d92a86f7decb0602596055fae2fefd2aecd1
Date: Mon, 05 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746416393
