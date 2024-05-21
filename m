Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F1A81E
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 00:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716252743; cv=none; b=od7k45/5eNrWMLM8nfMV4H8A9Y3E5fZOLNgY19B+0MS0AKm8TvaWYbWEJA5Srcysa7+E6MdHZkkgLday/c97nexyfNR0wC59BxSwk3G52k96PqC0sN0OMJGiTz2Xgpwby27119wE/p0IVWn5n8bwzPD8yQ6j745zkb1392l3ppo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716252743; c=relaxed/simple;
	bh=x1LSnfccuoQ7jHUHUhjhGjTO4xjO4Eo4bCsrWORgcB8=;
	h=To:Subject:From:Message-Id:Date; b=bVYhlGIYYf8KbsNPA/0aMsOi2aGX+6bO9j5vHfDsSpHzxfi2ddXx0Fet8B1euRFr3hOxit6Q+or6IGThTPsnfXzKpTx5M2X5VVECJBJfVBb/igfjyMBKDIkMOH2HQu+cYwY68QLm4OdX1Bn8qKA3Anu2/yoHjlZSM7adRnRxy4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0Xnf7Bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0Xnf7Bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88DCC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 00:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716252742;
	bh=x1LSnfccuoQ7jHUHUhjhGjTO4xjO4Eo4bCsrWORgcB8=;
	h=To:Subject:From:Date:From;
	b=a0Xnf7Bm/tkp4Sb+c9QwJVEFSH0uiQf76upXpfSa3qoVauC0kUm/dl9gvMNRkUCVI
	 W93RCEYVjPXEJksxsxu2utMvP54y7nvJesIgkX5CzFVMxMIPOwwqgiLEmo+HaVkOV5
	 B0qblZZ2guGYPD2/wow5iFlydmiOoZqFm1Q55xySGEXoAdEhumx4DSJC23DbLcBh5Z
	 h4LE5++rESQMfdx+2GH+FbY4lxq9/FZL46eDj4WZdozeOWkLDgzqJIx8QxV9NWrHL4
	 lt5tDr5t/aeFLZcVgsqXbic6UZxnMlnQsuq4bx+sVJdO7PHnZUXXt7ZlPgonLm/kMq
	 398JZ1/C8aFVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9AFC25B77
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 00:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171625274277.3658.4069575128176733672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40a46699100dd87768792fa97c56002463543c93b539a46036abc8598f44861
Date: Tue, 21 May 2024 00:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716252742
