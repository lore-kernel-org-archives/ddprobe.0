Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF8A2745E
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766294634; cv=none; b=PPBMLOMJRZX/d7SZ1OB21lQsHBgXRPeYNTYVwN6uAADdHCDSkZ+IBy1CWipL9QZV3DeATk+m+GB5p3h4JoyjQnZOLOto97DGwE5LR9zxcHyIkqom6BkYUazw5hbWFDNnBMI0S9okc3k23fNPcO+EXeiiE+O0QlRNsNwAGlSOOk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766294634; c=relaxed/simple;
	bh=co1w6lDPeOlYofWEoN2nMsZ0UBsAkf/S90ZpXVVf5c0=;
	h=To:Subject:From:Message-Id:Date; b=NJSohdoa/C/E3sL32/tq6kEld7TG2pzw4SyUslOOGwPJu4tklEXB6YdA1WWzp3rx328O2ReQ8kpxZN/PUNZtFJs2IY0KdQJSmDmXMiGd4zoEeSVmJcMJeNCMVQ55tNrT0sQtJSwNKkLrvaZRs2VQoMtyXYhynwq2lg68W/+DcvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zd3fu6A1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zd3fu6A1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4935C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766294633;
	bh=co1w6lDPeOlYofWEoN2nMsZ0UBsAkf/S90ZpXVVf5c0=;
	h=To:Subject:From:Date:From;
	b=Zd3fu6A1okIRXmlRc6IUT571Rzni/S1S29dHnHWa7gzevJkG4EQ7wwK+Pin7jh7Lu
	 cUA5m2j9Rx1MdkMtNS25N1V6Km/ZuIhWSKSoM0zGohra9ZSiDXp4B9vqJSNLA1odCi
	 IfSkaFgkqOYTKJqK/UH4Tqtgsw2b3umzcjyhsGu6Z/svIt6MVPRirO3ohqcpKIz9Bp
	 hMrWLbcmHHSSpHxEOBhqcYzrWRoXsIcm1usuVXGgRECK82kvuuWn7vpr3OYaWRztyI
	 xR7MBRyVNT5FlniOdPTnmlQWdfF8YuAdRzcZMZXNRkE5jhaXOvA8W3Qs+CRINYZ7gm
	 RzqqqJB3vbnmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9341CE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176629463358.14515.8833785930122376716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab34d8be649fd742f0b34d67bcf292b9945af8a60ca787f0cc46ec62b95bd547
Date: Sun, 21 Dec 2025 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766294633
