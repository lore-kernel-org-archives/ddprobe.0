Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBBC7A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 05:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646373084;
	h=To:Subject:From:Message-Id:Date;
	bh=m91Ky5qSd/HhcuS3yHQ/5Ceo+znxYM5gGPn5sLU9bsY=;
	b=XTqae1CGHQzyedoNgiXrLZxyZRHP+dky6/kkbIaJoyLe2j11q50s/EUUwP3q+g+Q
	1UD3tF4DfBX9x3FggQ7eouh1O1wpdR8uCbJWZyHeQGITuJMzKbeJEe7wWSSs2hb5dDV
	5si2eWzFKms3Q2xACZ47L1zuQlTWjTOlU3Mt2B6k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646373084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m91Ky5qSd/HhcuS3yHQ/5Ceo+znxYM5gGPn5sLU9bsY=;
	b=OkwiRljrOC6UiH8NG9P6RkFk7Qh+8sMKh/IyrdzuRTGodXbv4V4OxX+17Bc+UxcW
	88X4Ul6WcStGZLVjWDAJlA4JiPgA0++WKUo/u+nFIlwt1LF814JpFgS9qlqL54coih8
	U0yiDBTxbFNVUD6MJVtATB4DY4aTqrBGi2imFWoA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f537b9e55-843bc5ae-1e6d-450a-ab2a-3f5bec2c9f70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c52b207ebf5c05f3c2094bc8ee7d1a5a5dddaa3c545ce0020de40a5fee94984d
Date: Fri, 4 Mar 2022 05:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646373084
