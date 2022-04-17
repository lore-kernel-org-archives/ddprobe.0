Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE86368
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 02:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650161218;
	h=To:Subject:From:Message-Id:Date;
	bh=vLpgV2g9UD2JgY5V2sZRzU2pQXo7RvWijGSY82zQn4w=;
	b=Gbbkb6NmdkHkU/1AHSddSjrGiz4erHfC/0aB7+XnO2+cQfIIYKdaFkfmGskRqdXq
	ogXEK3vQXw4SCfIkRrGmvLF8psHsEoXHXcG9s5og+DFWlbtF5wBWz2S31gbatHOi4p8
	DHiyrgVl+NvV3ujODG5NlcDDXJyXuq4aSY+ozLus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650161218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vLpgV2g9UD2JgY5V2sZRzU2pQXo7RvWijGSY82zQn4w=;
	b=Vo6QhLG8bo/ZslMuzPI6cOvElXZ4jnhbQg2MB6eqzsgAL7/+0oukO+5xJLq67XIK
	xrUWpR8AX/XCQMwHqx0cvQ9rxhM5FRmLw7twRqRcXkkbP2mxPKR4I808s1mvLBtr0tu
	B2jTm0N6Klx6UVB3xbQfY61fl29yLBOyU89xZknI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803545f2d0-719842af-ab97-4efa-98ac-957efc2bd1e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2905f6a8dab77268a3c70bcb7906a0ef1d9a2c344d7557b7afc907f5a469fc07
Date: Sun, 17 Apr 2022 02:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650161218
