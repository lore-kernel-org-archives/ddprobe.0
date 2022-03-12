Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66742361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647098784;
	h=To:Subject:From:Message-Id:Date;
	bh=DgkkX8q9qjtp7IVqD7Ypv9m1dSQu99BB9XavH1zySek=;
	b=XNawcs5xr3XfC3UOmmYr73T1KKwZiBGiaKLQreLKWR+VZ/glsNSSTlzRp8FXeJEN
	xelZ7Zv8w08VS+i85DP6kyS9JDDXBOJ/Faq7LXnOnk2Gd6FBdJOxaN6dkvExvbyHCfn
	wFNlaSjJ8jP/Lx/xDCJxnGeEvBo0SPMH70eZTyyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647098784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DgkkX8q9qjtp7IVqD7Ypv9m1dSQu99BB9XavH1zySek=;
	b=LU4mGP9VH+kBSoCan1/wX28NrUfgfgnpuuUestHUDeN2kA/bArlnwxYC+uoF6RuK
	s27KeJUHNQxi+WGKZTL9v4bFzlu1M/iMpEbH/9rrtewlr16u9/AbALddfpF9EVehEOB
	M6LOT4fqVNKRlKHTpOkyAl9pm9FMJ2MjZaFElSSY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ebcebcc-d9d40cb8-7422-499a-959b-0a4a3d3af798-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77cbb480b6075b77031ff8ee895122d9c0ba1c555d00c76af4ee4cb7c3fc8036
Date: Sat, 12 Mar 2022 15:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647098784
