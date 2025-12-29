Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50222853F8
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767042833; cv=none; b=H2I7CSb+Uz6Ap+1SXhdZMV4YvJ9FYsYJzA8AYW/81G7TeMtk8Hs7bkCaly1vvdMkaujPYxEdEoJ3RoIRXE2HghWmO8SdyxJv5QC9zhaN52JpYtf7ikqcPFV4T3GiCjGBSieSqLMjFPWQopvC0uwbIk9NAj+pMEs/WN1RkBBxBcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767042833; c=relaxed/simple;
	bh=6Aws7rYS28YuqGAjhZkANUxsRhVd1Nm6DmgGsVsdMY8=;
	h=To:Subject:From:Message-Id:Date; b=dnOwaRjv0OkX8Q659KVFOnphMDnk4IwGR2t7m9huZy3WJ9cGY1LHpY7FNwVL/FTf15nuGHRVUM2f459AOqYw+KdbyHAZR9LF4wbsOdy+ixdXbV75vfGEIK1jIvzuovf2sHP29LTCCOS0qbnD1CJcQ9AdTz1vxoYJC5Ugps4UgK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kyi0V8qP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kyi0V8qP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E81C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767042833;
	bh=6Aws7rYS28YuqGAjhZkANUxsRhVd1Nm6DmgGsVsdMY8=;
	h=To:Subject:From:Date:From;
	b=Kyi0V8qPz3Ep0QPsEfzBWE4BM4/bKkam/+SpsrZiAzrICZDckx5DohDJ1gngMZKtG
	 NN2jfbMSFwugdilE1eayiDMdHyMupg9552+0I6vW4Znc6h5r+envhhEYPIy3C5BhHI
	 qn5TOY8Kl3g1QLt6o1P3+WX4+H83okN3LA5joxa3CnyxjYFMha+C7dKQstxBTPhiIB
	 pyajLnpn+llfOGfEIZ3BH3osPvHRyZC/fchc8TR5DNhUOg/zAYCC07+Ogw3+c605Jj
	 bUD3twQTeJZbSC1b5Ns9hyyJprG3h+fkfrf2zP9w1iKHCMjpp9Lw5gH0SZsKW6nOrE
	 ob+OfmkJXHvSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D36E92FE0
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176704283360.10303.2499734936732292793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a4c7c1d1494e7b519f6ffe78d920401237d2bd8feeae6cefaf19e8449ccc07
Date: Mon, 29 Dec 2025 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767042833
