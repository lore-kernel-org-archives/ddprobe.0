Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39C019CCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767983634; cv=none; b=WfzmlZGKR2GQ1FAp8f8Y2b5z5X7nJk9e0BCpY7DrSjWFEQoj5pewTTbHqgI1q4UJs41i6ZMvqY6iLbDR1B4CZf7BZ1LlQzwIYPV36/POldaEngn3C/KJJ55qyI9f0d3hsjkvWZ5x6d3D9tI6B5o1kias0siawoFEwUaWXDmPVzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767983634; c=relaxed/simple;
	bh=rtKyH3Yu6DCeAYmjwu4UHHc06q8cQVPtOguYw6/2FRk=;
	h=To:Subject:From:Message-Id:Date; b=X0o2iVnk6g8C4GclF6GLulR4YkoYcAQU3y5hSgJ7wKn3LIc+CzUxZFUOetvIFWBc6TwaxVa8sv2+uT7D0+jdW2cdw43uLCPFLr10oCHanq9WSwq0AfMW+Y/qHhJuDbT4FubTfgMMbcchUohkvdehh9yQUTHyW6HtGaZ41CfNzo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSBFMOlP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSBFMOlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A091BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767983633;
	bh=rtKyH3Yu6DCeAYmjwu4UHHc06q8cQVPtOguYw6/2FRk=;
	h=To:Subject:From:Date:From;
	b=VSBFMOlPr7yMgW53H7J7Xekacc0Iy7LRhdK4Vw4eEezUvK2v9wC0X3nYTe66n0yK9
	 PwUyC4LEUIFHEpa8KO4a76Ou38dTcs86FRpaLZlsUdUMIGK4BjEZ6OkLS+Cz1sQOxF
	 8pIgVH0sJHrRZ5TeaxWn2AP8CHp/ElaVGta2D6f7axOGlAnGKX5QsEGSMCkP5oNQ91
	 VIYurs7067KVqWBZmET6DmQ11Vb2lMQd6cvMithV0INffJZFNqJHNAugMDYk8yWLh5
	 jQd5MEwdW5bvmyr6bnFEeUPPzvCBAhtiqb8tgQH1xKjABHn9JItB46AfPHDHxuyCqE
	 cDvpYn1SMMhfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901FDD26D91
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176798363358.14559.10328143671773681629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a34baecfe6bf160f773859b838338066b42bd3eeba655ead20fda7f4d08b19af
Date: Fri, 09 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767983633
