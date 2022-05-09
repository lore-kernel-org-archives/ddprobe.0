Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3328B7E
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 04:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652071558;
	h=To:Subject:From:Message-Id:Date;
	bh=uGFNpgUlASlC1jUF3WcsD6Zyhg0mIfCgPKlMLMaEmnI=;
	b=Jt/htye6oqYVRhG8xjvq5I69b/XFFVHzG2lkJZJQzdL0pS6kalHCwOsV82Yx/lnl
	0ZGwM3WmI+G2NFHqMtaAvXCtWP3BNcx8TzuRGLJwxIGKhryCSYwN/zzDiDKEewBEtxI
	oX50B1JwYtmonRweLB3ML4ev4E71OZMfsjUBbHcM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652071558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uGFNpgUlASlC1jUF3WcsD6Zyhg0mIfCgPKlMLMaEmnI=;
	b=ixTj1kKb9JPFlwv4D82JL6bFGVDmidvqaQO18N13Rvhatvq92gCb/jIOKyA2Safp
	I85daHWt1GHfo7BVLVq87CTLi0DcqgPHC+iFiQFZeSSVv6LsFnenPGnF4A3P4/yWlP+
	cwYkqN+J6c2Vik2yJZlaDZBKq9HTyW2aBpPYV7qg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a7236cec-71bc75ce-4a4b-451f-b427-06df60972c50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55f687f04273ff6a5fa46507c99bf8fd1b6351e18488e827f6e248d3e6751b86
Date: Mon, 9 May 2022 04:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652071558
