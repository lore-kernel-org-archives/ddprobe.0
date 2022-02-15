Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0C71388
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 11:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644925284;
	h=To:Subject:From:Message-Id:Date;
	bh=Vu4BHoHUnR7ZNklV7bEB2+e5sq3tPY4C2fKmP3UpoL0=;
	b=f4rzWL0DjaIHsA0UwhB5htnRdxZ1Wqg/ljCcEFwHxJr0dOX+hw/SXDr/u9iLI1cN
	+uhOBHyTDXPznFKStMjnJRth5sVDr6Pl5fL2esZ8ddDn0I2BRiVgjWFKfYsm3w41xkR
	GwdCQdDNuSOtv/3cH6cVXhTLkYK2GKGMayZMsOqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644925284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vu4BHoHUnR7ZNklV7bEB2+e5sq3tPY4C2fKmP3UpoL0=;
	b=Swz2xcJEJjQUyyCApS5oGARGI6tCw8Gz2IZDrP4G0ziMPIYlMsQ75fJSXj0w2cpF
	VArOzYfcaVKoZi2zFkN8lKP1FyWpZzjd+kso8t58neTH5H8OGf0kIZAqe994A8lBvjY
	oWD/gV9YaXMRlCxpnyDexAtw7moOrfeu/ZA/z3to=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd2ff195-cbdc2dce-f672-41f3-90ea-84312a5ce5c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b81a1a1975c390cfb054623008f1acfbfd3e7b88b798cd194fb39e03acf2c3f
Date: Tue, 15 Feb 2022 11:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644925284
