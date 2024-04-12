Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618831514F8
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 23:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712964563; cv=none; b=ZGxHKIbfe2Xhh3hZTKWBjt0hQ23/y1Lg3Xop+ExrLH1WhVudkOzXERbHB6NFPLLSvVnWIyPAUXuF87JcR8VWUeZchxyWcd7DdAtWg9A+lzV0DfU3LrXRpPvjNgBfRc2Zi15ykEivL1QyBCfy1NfwHnqv8WlALU4LnlY9SpQ+xZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712964563; c=relaxed/simple;
	bh=kEDsYjHnz8V9fSmB/kyLcwWDgjHKavjfQaKaEJ546vM=;
	h=To:Subject:From:Message-Id:Date; b=e6HGJRu1z5ufCiFE2UZ86f14ZFbNjC9+qBerED93r3sz6DEIHUyovJe1T+y6iBPMoJOQGwvc3Ogyshb6XjX7SiQ9QGOYdd4T31iDyXJLBcfkqSOehR4Kd8p7UAvG+LS3PtKYPJZVmr0clfMXuKF/LUljw9cQbnuw6pRx95Gvj/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7l9S+Vm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7l9S+Vm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DA6C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 23:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712964562;
	bh=kEDsYjHnz8V9fSmB/kyLcwWDgjHKavjfQaKaEJ546vM=;
	h=To:Subject:From:Date:From;
	b=f7l9S+VmLbuQZ9uALb7eVvR0RXHYVsZqqCQQjXPVbnlzUaXDwAIJN07jyRvJ/SMe8
	 QQYioLO5QNkGn3Q/U4Qycqd+VfrnIQOc8tBBgtkrRjMsGYxl11cjeFbx5ebiKtagz6
	 P03xcQGrCsGSrtxeXWY8btCYNXN44JQSuSVh7TXWOLqhiEnQuEPcmhj4kUfa6QTSsM
	 8ja925YeaSFuU+2KDEUijRfrVqtKBgtuasrPb+sF9pjBXzWNfBNkLHFvBeitt6oxuj
	 QVHpY2bkMe7tA6dI0OvVrx1DxOh4LuCk/aLIa4immvIh1KuTuV7xu39Zq6omfn/R2/
	 hnyVmWREYDZLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1E1C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 23:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171296456276.10358.8408228079160546123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c8f3d9466d30a773b97f905de2ae77908920bff34fef57cedf68751ea90638
Date: Fri, 12 Apr 2024 23:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712964562
