Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A55372045
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779474154; cv=none; b=WCdtOIPteC1Snfef8srxbPCj8TdIqSbr1fzgLuGNx3hPKR6bWW0AQ3RKCgieWeBb5PBGcJ0IZpWJDCaVUgSl7SUsozIrghq0R5w37gaJ5Ju2JfTl01xQumrxkOz7nokXvkw+UgTAuoZs9mGXiX0uJM6pXGmvPsm7AsiLHk5bsvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779474154; c=relaxed/simple;
	bh=NUn5UeNLermAUaH26A2RNKrpHUvOHeq2nM2+1ryCKqM=;
	h=To:Subject:From:Message-Id:Date; b=tlwF5QyqlyBYFePRB4Uv1I6TddGnRW4tF74O5JHn6x/I6Bg0pGYTAEsL+QkPXR5mE/zxaATPG34UxgVIStuP8AP9FZT0SrlPQrRzsKabXVJBOdN9TwinOQfPt6d8qSw7ObE+HNOp8ccW4AUJA+zG9twU8/dh3kqEY8LKB1SPEVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUCVYzA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUCVYzA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0769C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779474153;
	bh=NUn5UeNLermAUaH26A2RNKrpHUvOHeq2nM2+1ryCKqM=;
	h=To:Subject:From:Date:From;
	b=aUCVYzA+UEVSlDLL4UcrtSQwd60/dqAMpPGSIHMsF5xIpzvnZ5mbM+oNGiYahNPPC
	 rd5KRsRKrb3ymJ2QATQqlI4kerzieiH1IIV33KbwWChEqRxvp5zT7FJ3lG5cGmVC8h
	 wxxgWC7rg0BSV1KPxmYIhWZOlkJrG5l3K/4ofrSycHmcsRo0yuxI79D0l5Wyl+w0AB
	 0lK5lBQpZrr3tPw7hUuXVkeCE13LoIE6yeHMknNeFa5SjoMZIN4wbqCLxwh6CKariP
	 S3/3GL6ngWVKBZajYUEBo50fyvPZEONJbPIrLJ5DZpn6qOSz4BPs2AAsIEpchz8opF
	 RSX1lR3gXn28g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A947CCD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177947415368.21760.13034450222248776910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd8b9b9326e60091ef6884b0313a3154b2a121ab91e090a27db9c7a0d444e1e1
Date: Fri, 22 May 2026 18:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779474153
