Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BFC07A
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647581784;
	h=To:Subject:From:Message-Id:Date;
	bh=yQnjow2zc1A6fCxkHVIyn1+00uH/ChYNQ9SC4tWISwc=;
	b=Z6FqIUgvkpNix50Wjuw3dAu2rU+mj71Y3cCpxVsRaG/cYwRFleSnSSGLfhVfH+ST
	aaUSMnDtmUnBKKHxyWxwCZ7+GUo8d9Viyd/E5d+NXU9Xr1WdUr+hdPLHeK7b3sNwhel
	F68Gyaef9eNmqBOn1t14Gt98ujol1hE9o8rSr8hU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647581784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yQnjow2zc1A6fCxkHVIyn1+00uH/ChYNQ9SC4tWISwc=;
	b=kXAqne96/YS58z+H03yeM5ffbGLcNgV049dCt/1SlreLlyGgCRmGEop3WQTC3Wo6
	N57+hLZYwlgI//vNXNb1oDrg9iicG1CSUrTZdD1lY5+/9cvKZoUG57OXDu1iAy2Nl0E
	OzpNu6nb6p4J5Hr0Q+Fv/Y1UrjJZOskZcdMf3gsg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b86eaa3-e46385da-bdad-4e54-9e51-31c9aec9c974-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53ca9ef5390e74279038fd132539baa29a2dbc979eb6735b6baab722abf61e04
Date: Fri, 18 Mar 2022 05:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647581784
