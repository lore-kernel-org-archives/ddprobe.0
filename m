Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 864384A32
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661199652;
	h=To:Subject:From:Message-Id:Date;
	bh=ULLDpNtKsNCqF8eU/WnsCRQcJJiklyYbctmUhg9spso=;
	b=a4m9XxHbSj/23RVcqeHxqTgjfjmNukkfAJFX8BaSuxU082w4OVJr8AEJApBvELGu
	Ynchb8OKErUMkeRm6Ge1/HWZcfBsmyyYtQ4mMxKEdU6wn8knORgB5L5S41WZuuMxDmc
	VjMVrRrPLxNFVSi2hzEQ5D22C99Xz2wgtSi7mddE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661199652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ULLDpNtKsNCqF8eU/WnsCRQcJJiklyYbctmUhg9spso=;
	b=CMGjJTBQ+DBq3o1okupXbwFXRREqPElA7ZIJnSeAXFSBnsS9UGQVLIcY3j9MXs7W
	d/EQ8jIh7OQGxaG5yDMUcIgBhBFcKFTnEh3DwmjDayyWcSd0hcb9u9z2BYsyfX30s62
	WOi8EcDLhwmdvyomtVgVLKXJpdezIuP4H83+EKQw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c7371721-e613892d-0d16-406d-9b7a-834e5f04fa85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28ed580810e68082abea479f140a320d9b02d93b6d241e522a1c97c142ea21dc
Date: Mon, 22 Aug 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661199652
