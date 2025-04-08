Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEAD023C361
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744133394; cv=none; b=a6KVMVHh4YqDWFcXVaCI40PeySy4es77tL8B8bezj5vfIEPVuvD59z4ZCY378/COkXpVobnFtXx3H8c+84ZMCRg1TAMJQsKmQSu5Jn9Pp/Vd4/sOOHSYhnsKbqncwsxCuKLJW54DlwcyPKTkLrPm2ms+Pcp5bo9vJMlD1Fwqc9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744133394; c=relaxed/simple;
	bh=LBAZUbEYNlfr4ZL+BUWljvzbPCKAuqexMPa9ga5s53Y=;
	h=To:Subject:From:Message-Id:Date; b=YuVzFShRsTSfcnHtbnjGzzxRXRYWgWOceRO+zXl8Gx2LSYWIUmnIKRB4xbTiFDzi8sE2F1FS8f4zIJR8BOQ+kYvM3+/NiPw3F0+MydbVr3S1x6McMsUBIeb7Bd664ilElfkttAKH4FPTSnOOo0oJiO1Fvhbo67eMGArZW2h1IHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOe36Cfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOe36Cfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3999C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744133393;
	bh=LBAZUbEYNlfr4ZL+BUWljvzbPCKAuqexMPa9ga5s53Y=;
	h=To:Subject:From:Date:From;
	b=lOe36Cfdq/SIQ/wtpsjkBG2EsYD7pd7UxbOFdXk07ohl5kBzRi7LFkFySZYRF0qWd
	 o2Bu3p7zzD7MxPF3qg2rMak8Z41abNoQMtqzr53v00iVy/yBeBITknofqi4/Vcb5Gv
	 Oco/cnjcaBAO5Rb89lL/9tqWRxQ9Zs8UWON05qRAW/0hkSh1ldBxkXxqCJYywJt7Ax
	 ERLWL4r57oJppD1ob0qED91bJKe+uONcGQqt+JO3C8EgTlbV2NA1s7w1Hn79l7iEa3
	 uqhxC8yE0oEimOb7NCfDoGkg2wNzPlW4Np7zMSWE935WJbzuuFLS1ruwtZYZ//UdjR
	 6glm8eyxM52gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3FFC369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174413339369.21801.7330845271059870583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21109766012bea45b14a99c956803b4253ab3b889562c06caceda53bd8f7bf01
Date: Tue, 08 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744133393
