Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE4B1A2567
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742142594; cv=none; b=EhPbDFv3WRJWNRbmSXTGz1/u/iX+8dy9cmKgKcSvEG8nwjIMcCsWJ6aQcF3ctTJ9O/spkBcIy65XEV7qhpLhPsVvMcEPY2h+Lxw1CoXLSW03SuslD8yvcPUvy784xYFj/iE/ldLLdxi0pxD9xkfPUOhisV7j+X86c3264bwvEMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742142594; c=relaxed/simple;
	bh=jSx2ZD3EeLmrd1NsvS1ye/sgz82law6h/GHO8zi3BN4=;
	h=To:Subject:From:Message-Id:Date; b=hetmaeTJGFDRPczEQyR8YBJTtpjMED10QS1pHRYSGnbBJDOs+mu4x8qx9J3OO5FpYsBydEcnCioaII8BbeauWcxMu1q6GfK9I9Lshi+J7+Vn8pPVTkUWm0MYKEt8Z8w47AQsFWbfrGbcq8qmYcxNRgEy71/MJjPnQeJ8hqZyOj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imHIb3aN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imHIb3aN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAECAC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742142593;
	bh=jSx2ZD3EeLmrd1NsvS1ye/sgz82law6h/GHO8zi3BN4=;
	h=To:Subject:From:Date:From;
	b=imHIb3aNQsNOZtSJ9WWY8lzef7C7BmntzHN/ISg+Czfh0GtsRhCe/KZf4+go/wMWB
	 OQiJlDd0b3jCUV4FeCGNXa6oYkU0Q0F2zyzsXNkJ3bdIsGK5zZBRjHEarygg8PBYmn
	 FOoZSkGfnXwW7UQHCUM9KpwKR4zhTcZWpsHuz7Lci5lCTOyNbIQw6DfwXbSWyt1FRv
	 JWOOBewOKb1Uz3Amx3L+3M15a7RxTlwO5S5eUL9nqu2zQEN8xe8UZBKIXGrW/lhoAL
	 /RjJAktT3/JOIIQ1JgIS+Yk5ucFaxoURY4HRKunfgtPMimzh5gEluedr5rkaBzb2BY
	 fE+jGm6xvX1ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9279CC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174214259358.18668.15718809196949296322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c4bc9e6d415fc18c93ee8609c026ed009116f355a1a558c501aa68ba14ea87
Date: Sun, 16 Mar 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742142593
