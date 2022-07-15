Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBDC4A04
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 17:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657907212;
	h=To:Subject:From:Message-Id:Date;
	bh=hBb3eZzQiFc18aehjCCHcel23qJRKKI86BQboiS2ANY=;
	b=F7+EUlMuqKmnWKieg0DPekQtngln2a3RpRV7GEIXIkdo1utgMg95x0nfraioJ//G
	MqxvFvcUhmjE4mAwiuJqe4eWwl11BUG8hsUxEqwNqovBhX3eQRI1cSfEOa0K6dtFQXS
	VCi4CjP0NzURH8750WlBgSIBf+Fy2CL0iK/M1ctQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657907212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hBb3eZzQiFc18aehjCCHcel23qJRKKI86BQboiS2ANY=;
	b=TNZMfqEng/2ILeJI+eUXbc/14gpIOW42lqo29BSVdZZHrfNoThAcmWyOEjDm5vlG
	5KFHgkxvE4HEm4DLWO2zvtAodMorFIYNTI/H8jEzY5+4BWCRn3zTt3vZBAVFfOMbJpi
	xafU5RaDbYM12+1+N5ods2GWcab6aR8cN80aO1js=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018202f87020-0d13fdba-157a-4aea-a88e-4f080ace7d93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b86d678bdcdb8115daf721da5d5afe0f92db903155ca795903c5b2989f3273a4
Date: Fri, 15 Jul 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657907212
