Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284C9628
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 01:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654135019;
	h=To:Subject:From:Message-Id:Date;
	bh=Zf04Y6XVch9AyX3JdzBA/YBtTu+QtmMXk3bu6Aunle0=;
	b=ZCGp8kMRsjFBvG9L2fpCAYItRKfnS+B2IbxJwmEjpENMNhynDHxaTRmitkD8lmyc
	Of8B7bf/LIHJvEwpRqVgHarmUrJ3onCjfyj3zjK1hpXZDPvPSMGbCK7lXBDB/XAlGDE
	3O6GPO24BUrv5+xbnjRWgUZMj/jOm4RGK/XMtzvU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654135019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zf04Y6XVch9AyX3JdzBA/YBtTu+QtmMXk3bu6Aunle0=;
	b=G3yLH7Jl8DoWoXSvxM3YbTQ46emNPxMNMnE78Ry/vGeZIYOzQsjbXp95m7YCMZtV
	yDvr8sWO+A9XCYfscfqVVYksb8UkkjatvyMfKT27t6Wt0xhn4CaYo/Fya+0cLBOVPdp
	2AJK9cTMDScuyEBLBFhnoC/dZeVrS8Rl4RqZlVPU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181222156f8-7ed764fb-4e30-4aee-8e85-8c34f8740622-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa192aa98707d70d1d57204342aeb03b035c6eb95bbe53f06cc9cd7939921606
Date: Thu, 2 Jun 2022 01:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654135019
