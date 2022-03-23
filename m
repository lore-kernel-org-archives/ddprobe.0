Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6396F1391
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648029384;
	h=To:Subject:From:Message-Id:Date;
	bh=p8LGL8g3QnOxNWvqkl1808rsWululBphy8DlP5bOjaU=;
	b=XpqkjaUxdfNTnQP17p6a0snAdzJyrK31cHIw2dwJXGYRibvgUZ+xuKsb+RWK5SO5
	44nC0K8YJ3MHjVe0Vv3zbATe8QK9SZziQvPknsHqE16JpR7kqnKMEaaFsaa9E7CAETn
	5Yw4mnsYhEafCLbVAb4/7LRckVvIxlMVmv0PkVig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648029384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p8LGL8g3QnOxNWvqkl1808rsWululBphy8DlP5bOjaU=;
	b=DOT107Pszzu0Z07zrpx+wlN6+SY6ynA5Wd7mzLewlbgvhmAvOix4L+E5FI0AxcMJ
	xC/xlsIrJ4rXRkOVNIha/Hewd2KecGgxUo7o0sg0yEMz40TLg8I/2W7TtmC2gEwaYJb
	2IdyXJCWlnaHfJXTpTWrN/tsMrLeSOisrrLZ7h0U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb634c021-4d9db6f3-c9f9-4986-be4b-202f07fad025-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2aac603a9808cb4444b5ba6ea9a7c8deafca7a4465b91794bca2cd73450c7ab2
Date: Wed, 23 Mar 2022 09:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648029384
