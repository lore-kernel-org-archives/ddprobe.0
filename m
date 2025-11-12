Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0024DD2FB
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762977594; cv=none; b=XdM7d4LG2ZSPEOKQ2vbITBlK7gSJp1Ibe2MhbkJ8jvLUmf0uuP4o7lpebLtZDYx9XGhAc3oDmFn0J96w/AZdIVbvBqjinpjeXugGr1It9gvc7gtIxOi9/N4ur1Km06meCI4u8s+EuAKIg9wUO4Qn66l4QDVvgujHEEANtDhFBt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762977594; c=relaxed/simple;
	bh=Byj5YmV2LoIrNOEF/yIxxk5racI3Ro64rWaj+A2D83g=;
	h=To:Subject:From:Message-Id:Date; b=u4brn/sZXLR2uYJ4/C/Oyr30X4CSdUvJ1cbQcQtyhGONOfiWrApj4ZwzHVKgG/8ekjsfUJ1my4OPagbP4RW0GJdT5/P7NCn1L8sBxouT4oXBF1yqrlpV3UDSUPnw+EnA3xPzqcKmxYQKEmVFnNIi1U7rNQyUwQ8LTvR0RuS6nig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVZ7PlEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVZ7PlEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1274C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762977593;
	bh=Byj5YmV2LoIrNOEF/yIxxk5racI3Ro64rWaj+A2D83g=;
	h=To:Subject:From:Date:From;
	b=LVZ7PlEvWHvf7oQlPKLVyxMKBlb04Cwae+gc1G77qZ4NhRaB8/dFNILlnxWFZOb8b
	 yYqfyENhJDqyjMnm2/OldTM6WxZA/QgmP8lZmN8E1/zG3pJ87G9+9XAwUzfvQ3n+rS
	 i7IQI1MjNkOWA66t1gwu3/aLW/9iQo6614u33jbFjEpeUgyLsbC+3iEMVo3sItvMx/
	 tLK0e6ueK7N5sD8BJZEIvJGEOeNLAaRvTZoyu2iaLqpmRS1UP3bvAqWiix52uYsSvS
	 akU0HN0vz2r7i+2lKopejykavsDSH2aSyIMkYdjEaKy+H8JAnIdqNtZ2upcCPZoDHj
	 j5TXpVdWmq1Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D80CD37BD
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176297759358.17593.14703692568405977431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9de3ea8037c9f7b534e659bbe0d1a3a7186d95acb34b129eca81b51868beefe
Date: Wed, 12 Nov 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762977593
