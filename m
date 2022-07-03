Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A5B1FA0
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 09:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656841012;
	h=To:Subject:From:Message-Id:Date;
	bh=zPGPGunC6ZJgWL9MgqQHuUNWY5NAVVcjKfyatKVHJqA=;
	b=fgIjmKYRsIfKhe2rSh/FR+xREeBMG6Nb0z0auRPbD37NkZ99rUoIEDNhWaToOaQz
	QGU5pUxgt0krvFnBobGOP87PM4fQ1Gnov/C1HXEBW1CGi1+VmDOlVdCQ+DSySWwhFuU
	6ZuSTuoSgjiVAfXb/deiFedCieOPFLkEbAWw3Z34=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656841012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zPGPGunC6ZJgWL9MgqQHuUNWY5NAVVcjKfyatKVHJqA=;
	b=Ey8h2xEycb/J9jqdqKuuvXYwDt3dMeGXegdxxVa/R7JaG+n9Js3GPgxmZxlCNOFb
	2lbrNRBSUIIKYTA3NZBrBUhD4e4e3bfdR5LsV3hAC7cv6okHSuhdas9kDPmroVIZcnl
	Uak7j6FkZC9A8afLRuh9i75JvJRyF6Tg+K3tmDLI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c36b8467-00934458-5bf9-495e-ab73-d4e9081c95b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bd2706f924ca7d5a3f51e2e3b7a3d6bc31da8ed6ee12577605a3558a018b462
Date: Sun, 3 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656841012
