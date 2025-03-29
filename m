Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAD913C3C2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743266994; cv=none; b=eKBDXQPJyfyDnKSkGIZulKZDvy+5qxWtiZUwLhedBGuZXWk8c5qabPp0Pde6zYJvzCLa44Q3ja677Vbygq9WPdmyHYNLp5WnK/VLrLAd8CjtXbnGfc5kl2MDIomKo9tiweEQgaQgYxNyvl2LLJqgvjP8Ojig1gY7BulKmiSLGF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743266994; c=relaxed/simple;
	bh=aurHFKpwDjNxlW+4c+u2642Qh8+zfPVj7Lc/k9GwBPs=;
	h=To:Subject:From:Message-Id:Date; b=UP9VdXUoxogE3GYT8tLTJBohDUKwABFsqSir//g16yw1uqcgac//yanTIxxeTO0S6h/65a0e6KNLrXw8eunFd/TKiWsr1oAuHwcJZNFcTDt9gqCndSjzUoJ3QLIDnRRL0m9MFQvsRrdu3NC7QEb9i4VOsAxc79ZptcR+tudNd2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYfZ4AvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYfZ4AvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC592C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743266993;
	bh=aurHFKpwDjNxlW+4c+u2642Qh8+zfPVj7Lc/k9GwBPs=;
	h=To:Subject:From:Date:From;
	b=YYfZ4AvNhup07w2TUX9lKwm9fMxFrML/vdvDaDdfwPGuRr8QrLz1tI3qehOD09D3P
	 aui6u6ijb+v/hFwf+MabnP/iUidFEZXTaYWrgCzUXpsWvJHByxUhozTV+HkdCxYWZa
	 tWzQyvaVu/47buzqPzISyr8Eru5FisRz5g/QnDxDNvxxEbfmPcgk3rIK1NSg58dxBO
	 NH4Ztsq/AAdD/oSQnIoyRzb91DmwQAyaGdkoc6gtluOUW2IrSnAzKMYrDoKwTEmu3g
	 /u9hZO+t+8Ge4oAOHF9NtJnuxTxL4aMCmMW/tllcraMXfoDPXefSrFFkXaf5EPG7Wl
	 F8+yn50vsLeqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CA6C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174326699359.27713.15952931119497512883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae9c2a44c1342cc2c2cc55fe2ab9c82fa61ea6e6998df7002eeb8d601a24a5ff
Date: Sat, 29 Mar 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743266993
