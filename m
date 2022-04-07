Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119F92570
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 17:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649353198;
	h=To:Subject:From:Message-Id:Date;
	bh=SXOMAkuaeyJ3f3UAWfgugYNBwZ3yd4ruGWjZxrgYLdg=;
	b=aM7JWD+MZ1KzXQ27JHidOtwzEgpoDmCtvnZkAgVnQUaRrXr7+hV+dvk6wJaonvOq
	x0GZMyXNUtLbEwrfvGmnJJvFb86k1VnW2hj5OinBGcsQfqa045BWQCdvDtSYI1Nx9bj
	OA9YnA35POUithLDn42bd/wysUsajbXC2XMJ6ZPw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649353198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SXOMAkuaeyJ3f3UAWfgugYNBwZ3yd4ruGWjZxrgYLdg=;
	b=Nb5Pj2YaHVanz1RgwywTMJFVjJb/KOjpSN0ASXfyTHph6s3w/gX8EvzdV84T/t92
	Pk0CmFoPBwzDlKmSS38eoIRqa5+18Oo5II1wq6or/twxgLtkpnkdkYK7XVrtZwXwqBX
	5thQPkF8S70QYrptnYBUNPWUKzyAU5xE8FGvUn1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180051c8aae-cc9eba1a-1070-4d93-88e4-2fa7c92cee8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 515ef4a475a50fa2a45ae23123ee353880b1f41550cbcbd3194789c1300c0b36
Date: Thu, 7 Apr 2022 17:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649353198
