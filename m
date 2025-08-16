Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAE926D4EB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755362994; cv=none; b=gWiOAzgw2fVSZhL6vkKCHdrxgWfbf4f8kx2H+hHX1a5mYY0xfdUDpAldvL3pIfA9p3KT9/X1i1rY7uapuNyZS+TZY2Z0zloZsQxDdjICHmP+Mips5fFbxLXxdM9DKHvj/wAlKK+uFDtTrY8hlbcspzxwFrEOW4Xgmpti/R3UzjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755362994; c=relaxed/simple;
	bh=ZOF1Jb8NziGhMbb94outf4/XPI4490UYhFbOeX1Dxls=;
	h=To:Subject:From:Message-Id:Date; b=YkV+wRHegy6vzJFs3NlJTPADEMOpov3Zow8n4mXe9JSGrOnl4NFRXmOh2q4UWJ0OkRR/aGiv+o64y/SmbHzlpNZA8Pk5x+5REDeHbKv/9hYuGsJApjcn+73wBFDeAF7Nnzy9Sgz+lrN0g3rIp/rS/uz/a52id0hn3J+rNre2edg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2eduvSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2eduvSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4458C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755362993;
	bh=ZOF1Jb8NziGhMbb94outf4/XPI4490UYhFbOeX1Dxls=;
	h=To:Subject:From:Date:From;
	b=E2eduvSipN4ae1ZTtliwf9j0UQQd6ZQCzmsZ3RPlC5vyWb9gukRvJ0l+UCxR2h7Uj
	 RVPCEC261WIN0J2KvtC470l8L2hOYHCN2Oi5MVQIiONBBb+wgoE7eaaxEXvViZ4TsK
	 z3Ehn2trMP/V0I7NWqt68mlSZN6GMlvsaqB492/1ZRSCpXtGObdHpVJRC5LbNv6YPO
	 oUV0qLqfyTr+wFZQqLLkbJYmJFBJNtCiLyHm4Va1WXEyjBqrWoYshjohDz+cJkAJ3Z
	 31paua5EulOFnblIBLkj/PCELfRzkhofkIfFBdJ69us6LwkHRopkOWhxMrubZdghRR
	 K7zW0DpjVwROQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909C1CA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175536299358.29002.7242479765888857302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57012860913246611d605da9ce70e5a324cbedae3f5dba7975f2fb7d89d246ce
Date: Sat, 16 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755362993
