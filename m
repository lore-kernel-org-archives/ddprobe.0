Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600C115A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 07:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648365058;
	h=To:Subject:From:Message-Id:Date;
	bh=bst3IGCsw/VJi0C85ikeSdcdQNfu7YQm6Iyn+Vo28Tw=;
	b=BiXw9PX/eHRjjdqWnAKtIwe7MXMM5PVXrx27+7CGGAoiwM99PIlp/iNNAMtL8oK2
	fUHZpnXtjTmHuqQBVQq2x2lgRhsHny5dLOxR1AxSq3H9WQhGXuPPk2ac/MWx7iS3Obb
	tD61bSbdS46WlLvSp2oc9Ti37ea7IsXCbIIN009k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648365058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bst3IGCsw/VJi0C85ikeSdcdQNfu7YQm6Iyn+Vo28Tw=;
	b=CthMuLwQHNZHHooMa0dk4pC/ifW3gJtCXMQCnVAYJA/BuUyqWRGtMELNJXdn80E8
	1EA1l+6dM+4W8/UJhJLE5XalrhNRGQnzyK6qXpTTc3n6wns/JujqUqY+PuWIc433qKX
	mcIy7o16dU1uLZbL5/1tFOIBIzqNp3v781RoZ/sg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fca36b8af-00f08c37-14da-46df-b279-64427448c839-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e00d48e6c1fe5b339cebc873a242056dce7f266d3eaa51d2d3ec5d24e74317f
Date: Sun, 27 Mar 2022 07:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648365058
