Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFBC97C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 11:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648984498;
	h=To:Subject:From:Message-Id:Date;
	bh=Srvfa762eFVPRrLRcyN7m/MLK54X4o7lfdW7Z/c6JPI=;
	b=aaXXXdh0e81FY2XKoFnGouHtS9PkGszRIH8zaGltc/iZQYjXtfLuJ5YB1qR5Sh9a
	266i7j8F0DHj5CFOitoci0bDSMbtArj0Uhj4IMZzSgV/WWGSMjIJ3qssBb/RXkDCMYR
	WSGd5oGAGQ1ZECVSxeKlEkLmFF11vYLvxybromKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648984498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Srvfa762eFVPRrLRcyN7m/MLK54X4o7lfdW7Z/c6JPI=;
	b=aQp4T2x26m+322SSGpDDutbuRzBCcOiZDx0sHi97YInpXXTBtwoMW5R66z299gSg
	XfkT0kj8RiYdd+906YBaeufIAGCHyvpmxa78nWzVQj6OOKlqW0mbFg5WVWU755BPIvx
	zkB6ZYMbrtn30sVm7V0i+IvR4asl6P2f/lVFRbGU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fef22a039-7eee399d-7443-4096-9449-3d6da7956a6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebad51e261aecae99300071c649aa340e37b36f7152f62b6ef0bd1f421f13829
Date: Sun, 3 Apr 2022 11:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648984498
