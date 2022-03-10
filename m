Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668BA7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646904984;
	h=To:Subject:From:Message-Id:Date;
	bh=0vq689vdU2tukf9WDdaMCZLaZd/Ra2sv53Gtnt0jTus=;
	b=Aw2TwWHfBdfCg+CJKDuhjhs17YaSLYheyFEMbgdrRhR6lcen7JUJDN4XEpzc293O
	yscv6wHxt/8d04SAioNRoQ0yBIE5x9scZtekxTtxSZD0WJCz2cWMMyAiPUSEBALkIHz
	Onkc20uV8avEXUEDweGllmnaN8a4RgnElv4fosW4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646904984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0vq689vdU2tukf9WDdaMCZLaZd/Ra2sv53Gtnt0jTus=;
	b=kn8Q6CohpVcsBWyYsVwW2s5C/cxIn8KyDe+8JM2EnDVPpjqEfXOTBIjBCDksjFoa
	eML09/PqwRBjqcTpoTAnDlAxnOB9Rump7gL6+1NriXFWaMRqFEwzpaQqbEoZpH759aU
	M17ZoLj74Kgob2q2Q079GJEimxj2xDTc4M4h9OwI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f732fc4b3-a44b0acb-11db-484c-8d2a-98b2eaec6806-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e523b27f20568c3c4c9afc6a5b3eea19a6f08751029c9dd214523f85534b214a
Date: Thu, 10 Mar 2022 09:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646904984
