Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220B41FA6
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 21:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649713138;
	h=To:Subject:From:Message-Id:Date;
	bh=qBjfYHdG9oHzGeyOspRc9L98kSdzePZkukxBy2mhKZE=;
	b=C8qhvGYdkPkvTV88DWA4Ns9OtCeXrd5jWjChYqXfFEdilaMwud0H0y0c5dUqlccl
	tmsMhkV2rhtVlhjEXfXfD098Xy4kU9ZqwDENGm4EpUC/ht5jVfsv46vx/j3t6itdouo
	6mr56WDLrkmISgC5POpnlxDcIsvGY87zVW6nbMvw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649713138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qBjfYHdG9oHzGeyOspRc9L98kSdzePZkukxBy2mhKZE=;
	b=T7/ypCDx+TLfiUiJQ3LZI7SOL69A0xWlX/A1SdgePAc0X6UrMRj57jvE0ysiiJjy
	PBn/758iGsMD05RTllgkkszhYjR7MYdmO5CViqDTOe/i4PsFRprv5roz845d2YsYLM4
	9dy1VDS7PuMbYyYRvAcjoLa4C4dEKDqx9YtmNsl8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801a90cad5-5e657c82-d322-459b-b629-5a84710b113e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 024742ebe899068ed3d889378711f43a2962ee68dc0f1e67075d58db723099e3
Date: Mon, 11 Apr 2022 21:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649713138
