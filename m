Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36839179
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 00:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657844812;
	h=To:Subject:From:Message-Id:Date;
	bh=DXQZke/iuaP+CJCEDfkgJsLd/mpPKQIg0prw58a0jAU=;
	b=ONfyFeZgxserkJEqslzGqqvY761/XiXMot8+0uWBj7SfSeQK7AbLMS6dWI4lscXa
	cOOEyeh/Y+dSqWtnTp39TUIJHk/YX8PvuakEBWcPlWWfnLKvsudr6aKxbZ8gADA5PIn
	cGFjZXDZEFqI+1zWRWlB8m9GjzA9gwltfQ7Pv/W4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657844812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DXQZke/iuaP+CJCEDfkgJsLd/mpPKQIg0prw58a0jAU=;
	b=eAvlQ53M4DdOQD5qr/kgQ866EmWN2Ft5I/1rpVU+JGb8zJy/vVv3wW0RzmSZrt03
	EruhMUY3tr8r0ejFsg5UMheEVRfKQTTzRL+rHL8TUz696UqzT0o7HX29L8QeBWQyidb
	CZH+9ErpCjjB7PnPXsacbZ2YHAQ3oHXBOkNQistY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ff404a07-727fa3b2-0829-4568-b031-f272a9b4ca83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 337bc980e461861d1519bfb6ccff7c28152510d2a065b34aede7e687fd660c4a
Date: Fri, 15 Jul 2022 00:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657844812
