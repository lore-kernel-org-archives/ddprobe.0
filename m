Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB6020E9
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 00:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646182284;
	h=To:Subject:From:Message-Id:Date;
	bh=Wcp6JcoMhPwNTyBLo6KSkY9FaqglrqMpYxKfxLdaoGM=;
	b=NV8WdHcEwplqf8P0tHyYGych75sdHr6VZ82Y0odSSbn91qQd6kXLPEKNoyVlfZAq
	yDLKacyYXo8J5G3lgTsj2+78v6z9tCknSH0TEGBlv5QYpGVmQpbloUl8e2j/prywUu7
	SfzX08aXYvEyVLe5K0R1UOwTMRw48MqbHMZ2yJYY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646182284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wcp6JcoMhPwNTyBLo6KSkY9FaqglrqMpYxKfxLdaoGM=;
	b=CtQ1dHi4IbOV2BW1MlXmI0yQ8pMm9s3Cyr85QqH0GkzIavRLUX5qvnS1TXirItJQ
	sKIjOM7cAt21hbr2k1zGbsjQrswVY9KOKe+dAf/5FJykQ2qWsR6kSdfUa+aNo8geSFT
	Q3cz+60KJilbwvqCfm02MvPsdGLy1EOO1S0heXOE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f481c3dbe-3b98bf9a-3a73-433a-a710-dea28dc371b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f0b2ac216032563a42acdffd8a75cab1d9083842f5087c2918a1c89bbfa74b6
Date: Wed, 2 Mar 2022 00:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646182284
