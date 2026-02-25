Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A38248886
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771998894; cv=none; b=atDszfIyQWtssadfqngzrE3bsPGGuHCRhq25TQtvD4hAM93iQOuhdVwmiVj2o11qCdV/8IKO9ZU2wuWwb9w9UdgOW/iSBmhW5tPkvnJcT4Rt8p0SB9ntFkJg/0FPxpnup04re7tWBwPpUrXffuuyGWbn1OLh5LhcKzyhdfL/Vvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771998894; c=relaxed/simple;
	bh=ykDatKt0DBU/NE18WPTCl0R/Llx5ADOr1cV5PbmqFg4=;
	h=To:Subject:From:Message-Id:Date; b=dLY9nrIlNVQlUT7FCpeN1wEQ+2HV2vQS9/fiXABZfbBe4+VCTMjav+ziQBALXb/RIn6hRT0wge47gJEeVL7Nqj2SOJKjYoK7AzKtjCJkg59VrluDjCtqz02CfeyRjTkfAexOprb9HMTNxi7fcI8qgLj2WU1Plvf7Uz+KefefWe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbfF0JFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbfF0JFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A597DC19422
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771998893;
	bh=ykDatKt0DBU/NE18WPTCl0R/Llx5ADOr1cV5PbmqFg4=;
	h=To:Subject:From:Date:From;
	b=DbfF0JFtESHq3BqaQYFGl9DxK7jOYwYLllQ+sWmVYoEXOxL3bCzhABjs6gJIiH+2e
	 Q1+o3qmFlckrm6sV4nHiuLOAHV1vJMOFyllh/DZctdVp5w+pnVFhWxpwcg7o2WbfO4
	 VTifH1lukJ5IFS/tfkW8fQwgAB1178DrHvBXVfZqkX0FTDPgYkynK6qZp5N1wcGL1L
	 /MZDL8Ocl9lf1emUpdzsdS4du0m9lqBNsFSuiWqjA6+n1pqKtUSaYdeYZgnFdXGUQG
	 6HHT9TMtPS8Td8HaKp28U2LoI+uTJ5CvRTqKj/39nXUMgDN9fmvNFqDAQnOqk9P1oA
	 GybnUF6BgFXUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E21E9B25A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177199889358.22731.10425285754193929186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f8085b9a878e93c7eabf160fbd418325e505e837037839e4e8fa2ce4630f960
Date: Wed, 25 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771998893
