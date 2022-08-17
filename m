Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69273C29
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660762853;
	h=To:Subject:From:Message-Id:Date;
	bh=z+MouiZUcOeOMgICMOwKCBl498TwqwGQgswm6cPUO6s=;
	b=knTPYxxc+J9RzlViNzt5617as2bdjTCVoaBCbK/MoVc4M+hz5CHWEBfzuAslGGre
	WhkNu4MaqtHLH6jzrSiBnsjl3YZgOUrxJbxcTkgZseUvmN9BZFXaD9nIi7HUf3eC7iC
	fRfIpaw/MoFmtGqXQB5m2h/mfFhYlaOg+LUpVrtU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660762853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z+MouiZUcOeOMgICMOwKCBl498TwqwGQgswm6cPUO6s=;
	b=IgDLOvtD8bsfjEUS7U7jymOVZoFdeF+Drs1EZXY6G0NSpQMVj8DMuqr8ss3N0b7L
	02SaptIYmtMn4xvzZ35xjIV2Hpt2OrwxQ1sXn9Jkouu9TfvbPesRVLpm5t/hOjQXB1O
	PK3ZcKfHk1f/a5Jj1q7eNgnUYTVkEJLdJGRh/H5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ad2e0dc0-8d1dfb02-6f0a-46bc-8735-79db76221fa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 942c3ba900a7a315fbf8621a27e21d0b12978443894ec6df7d37fbfed1dc2fc4
Date: Wed, 17 Aug 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660762852
