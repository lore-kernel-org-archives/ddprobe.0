Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB071A0BD6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771812894; cv=none; b=dhgGwf126pF/O1pszgOn4A9O0uRJJkMhMhvWaWP2GuLEDor2AkSxbdMSi9MIzR2JLLQGHrf3RTukVW6Ovt2UFockKnq1D95IYGNGRJOm2Z+iXwPvsXv20rHFJj/w5xPuMswgdTM0aTY3Me3ErgpCrRU4U/PJx+nvBQkDtAHjn7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771812894; c=relaxed/simple;
	bh=zHAeG4ym64Dzt9Po//nxO2rweD8IWmj/kS9FqB2uLVc=;
	h=To:Subject:From:Message-Id:Date; b=ZaIKyxMWm483JKaUpdlp7VyqLhSIa7d4OoqJBvgy8DxmKHWQ17V9wK5YnMJ/QBVII2XvkwnfQsLsvfY6WmG+zXMyW3C4Wovdx/ohiJxb5CWMNmBmh1jZaedj9u7cOZVuSH1qXWzzFhyYa2P9v+bBXNJLJkpMfsN9TAiMBQXc/Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSdkXWdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSdkXWdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE16DC116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771812893;
	bh=zHAeG4ym64Dzt9Po//nxO2rweD8IWmj/kS9FqB2uLVc=;
	h=To:Subject:From:Date:From;
	b=dSdkXWdb72KLwuRM3NqS2tCMYodclKyQNWq30ohVw7YtgzTzC+ncYZDuAzDPBtlJn
	 +7xKoySUHNC0P/EhIDi3HmSzvPEw2xXEJv7DwSbxQnjz1R0fcQ0X79qQ1IsfrKfyGV
	 xjg8/1i5mimFCGnXfGWvomk4jNecrJbx4mm3yuyiHSvNjWw+bxB57nXU2CKWRg2/d+
	 T76XaSg/eA1JAqnZKMjmqlYDMyeKJVPfUFOLOUIDvaPBaCU/H9gZ1G4jjCTllGOeay
	 Hk0Uaf+XT9yKmNTits1tjevPafMSsj50yGSTjRc5i5/N47+gU298YXRCOBn6CMmgVO
	 utCyYjEexvBNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C1E909BC
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177181289358.18780.14159411816817208244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c39c30d40c6bea9129e102a4f89973d846d94bc36d0a6174c62ca71f8b652b
Date: Mon, 23 Feb 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771812893
