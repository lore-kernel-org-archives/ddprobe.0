Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C60510EE
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 05:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651987558;
	h=To:Subject:From:Message-Id:Date;
	bh=PKCc14h/hI479aSE/WucubPEulCs2TrC1wAG93+iT0c=;
	b=dZmQFwsryeoNNu2eUq9UyrAYi8THEe5HkdQwWVnrHiqhZpbJ9UvC8FP5tVlTe71Y
	0OkBV4ONhzmM0j5HRzNCL7q5Vr+gvC3/mYD75hG6Cl4VRJNjJiQJlFq5Jk683oQvMAv
	lJoAnHjMWu+gmgy75PJogDX7uHeuo+meFwfA4MGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651987558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PKCc14h/hI479aSE/WucubPEulCs2TrC1wAG93+iT0c=;
	b=UTt8rCe8vJmMk0vYXWcJyFcOqByROvZShkotbAFpZsMeFHk10UywaIm0dmUNKWeP
	D6p4q46HFi9k4XqTW/8xd40JbmzOiw4ikn4wVcIZNHiAyRncju0B4Ys3OMU8XUT0bJ5
	vLdxAyh6Puw+aHIdSayrTu2C2NXAEhVs37dZd2hA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a221af78-b3d22bd8-a059-49a3-8726-9f645d9ca3ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 406f5a647d389051047f384634e0d3fcacb986575c17a27dfbb84914896bfc10
Date: Sun, 8 May 2022 05:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651987558
