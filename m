Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2C5185A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 22:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650494458;
	h=To:Subject:From:Message-Id:Date;
	bh=g8++Lfb10SxvWIpoFKHlNrzd4yNJlxGfn2nVdeE7v3k=;
	b=EoS29gl2nCX7P8cptX+jXD10lNVD2qyTPfVyi0qXWmQtxDjiR8yP8+GY6J/UKij6
	oGWrWiM0/klCFgDrfMClfuhSLNy7yvn61hFnIdOn0Y4ZhTMBzW7049UO+R6f8KpnYX8
	5Kjph2cKkXVx73w1fLS/uE2vfX4nZ1GdCzLI8SbE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650494458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g8++Lfb10SxvWIpoFKHlNrzd4yNJlxGfn2nVdeE7v3k=;
	b=QvL9KGl89/yhPABqSY3bf0M5HtxRjIhnP2G12iP0O1ONzzl2avwFmf+jlyX/iMSI
	+4bD6ieCvB+kODTfLAwZ6UwLgmUw7TtKWHeaToLoqgVg57WE4xrpZ4zPfm7oBiaM6hh
	rMvKQMxvAd/nZdtqS4pKxZxYD+iASI1jsvDXiy9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804922c9af-540220a6-596f-468a-b167-78ecd4209531-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12fc3e36403cb955346dafea495e4ab177edc1ef1e280db85c9d5b3514091f69
Date: Wed, 20 Apr 2022 22:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650494458
