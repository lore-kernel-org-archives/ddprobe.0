Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29260621
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4HkkT1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FB76C433C8
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698518896;
	bh=9vp3s6wCfsH25iOoDTejbjtAkfuNQ/hN+W/x2IzTA1c=;
	h=To:Subject:From:Date:From;
	b=V4HkkT1W2oczTZTPSuzx9vBWtAvMHLFygqKo92Tt1U2psUZ6UwtwtHU6SfgsAdUxL
	 K+sNKp5AlEloDdNXEwwe/iHStaV+os4WRsciGvUuv59Pymr2IWwgJhW+83h7wMcttQ
	 4wxtnBlcngptIcovMcszBmZIyr1RxZ85h0+2MfnGISAthnts/POSpXvMIZwCxpmccs
	 1QyaZvf8zYY5q0osmaeWm+mRStdfDewsf0/S54Nhtl2P51Kpea6pWAVRMUzLGdWytO
	 NZFXtdQNpmIVhjUuXbFHsV3x7IV3AR8NvhP9DIlB13AC6rr9udTdCxGxxKJBHZBAVW
	 n7mL/HroJKecw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE4DC4332F
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169851889637.5155.17534231953263635859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76390a8622d50ba48c958875129363381b671d3e6ff6b136ec788652f387b04b
Date: Sat, 28 Oct 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698518896
