Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D437D78F2E
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764900773; cv=none; b=ZPvjaCPczOxyPhIAMvGve7w4hn6iVwNzT8J+1IKQu6EYBhb6rY4vhUPwGegChcbcXORxY7/sDlEaQx5HRuOqCL8gYMhcfB5tKA03H+PkCdVThrZWgjGqupG3eKpWX16Uqbm0gQ9FDQPFN87t6kF0JmzSGQ7erE8pyA3jAlvUxUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764900773; c=relaxed/simple;
	bh=WRaXd7295BKKFWR+ODtGc69ly5sOvmFlR7M8Ihw2+eg=;
	h=To:Subject:From:Message-Id:Date; b=qozRMrd5pEXb/mddKLJntfcSv8027Vxcwad6g2iXBt4Hsmd8ONYXB7fCRftY12/q5p1mNwDni/SLNQnSauQr0ioFoGEEc8p0ZVOxyW8WaxQ3Ue1YJTgVHR+6Dj9OPu0gyB4sQ/7kVPORmGHljyE5SclVm+ehk8wmXi77cyen1gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuscKMZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuscKMZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04F1C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764900773;
	bh=WRaXd7295BKKFWR+ODtGc69ly5sOvmFlR7M8Ihw2+eg=;
	h=To:Subject:From:Date:From;
	b=PuscKMZSimHneDpbzVTvk/L2ZRv8OyqUTEpth++z/lUKzW6Jb27OQ3O9vRj123Ymo
	 3M7g5R/5DBREzrnhRGW9pSvt8qUrprpygVR/CmLEEH4pmIbuzfe4FvG453X8MSG8kp
	 tvFGUJpOQGDNSj6PBjIYBkd1aQAiOodfOjZw4JkizL4RP4CxyYEuKdq1iKmeQsGSaZ
	 /lGu7RubaMnFjeGrUBmWdkFVv0splp4YkW3fAj5XZi9ExgyPT2UGJTjpNRDNlZo7HJ
	 HR0xM8/g8J+kAW/LbDgRbPDqFeimogFeuOGM8thy7G6n0eCFJrEzUZ9fcXgniYNltz
	 G53VrArHXpdfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B02DD2CDFE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176490077361.6256.3597484263761298391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74393a4731184bbc74a4ef39bfdca25a105e3bf8bed701ed5f8be0a3cdd5ab2f
Date: Fri, 05 Dec 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764900773
