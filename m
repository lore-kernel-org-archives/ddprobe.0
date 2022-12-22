Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF93933E1
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85C70C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671748287;
	bh=K5w8TrojTu6gqdeIt8S8tktNzL9tWRZBTXZ/AkOwJQw=;
	h=To:Subject:From:Date:From;
	b=p1hc6qVvhQ2e7egx0NKWCFg24rIhFjE8XZP6V/sNCKwcVDwf7n+yfK9LOp1cKtLgO
	 LgCHysQBeFEn7III+khTcc5m1CJqokaCKHrUnkefgF5CjoHoXQXrS3KIZi5WmY7BH8
	 dMkX30vsPot43F4VI2vSz9V0E6uAwcGtgHB6BxqszOO4qiuiaftC3/ke3lrRWy6OO8
	 LKsu2dx2WQhi/IFBp7BOS0xXPUKxben8bNXkuq+o+NpEFNGs7QmsDJSu5T/AaFWWDO
	 YpeJnFlp0QM0vCIP+F8YMnfXZeKSRMttrEg/WwhQHDEG292Ulq2clI4j25dYK+ypWL
	 kdkKY8ZlELn+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 667F9C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167174828741.32098.13970839111299578680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fed28d84d779bde426f7ab9ce761a340e0fd2313df08473677274e6007ec9b6
Date: Thu, 22 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671748287
