Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED783368
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 01:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657156012;
	h=To:Subject:From:Message-Id:Date;
	bh=MkFTs5PbNSxS8yuuf/6r8dp7jm176S8m7LZbodK1uAo=;
	b=jUYVzMsFUwy/o5KbESLq5ux2TUbjeFGWJCGSLZ4OnfVFzXr9pTJAu6eFxiilNfLe
	FySS3hetVO30UmBs/CRW33xL/RmZrbenWZPthocBJ4g//r2nqN9B0top+wz8VO8yrBD
	k21EYzZSRwIhE/9t2Z9nShDQnR6OjbiZPHQAo7jI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657156012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MkFTs5PbNSxS8yuuf/6r8dp7jm176S8m7LZbodK1uAo=;
	b=YEJiEOOM5VdgP6oIV5soK9TV9WBLq2VuBLI3DHk1zevXUi9risueUY9q9gqoJVDc
	9OSkBN8RrTxZKzjyMpw2wnWe1QE9K4ziaBo4gZVuGTvhvvMTMpyruKEgBORRcPQVCeq
	Rv0XEmPR7VwQV08OfG4bWY4SQvqt8ZfAil7jk6t0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d63208ff-39072dd9-cdd2-47f5-b581-1cc75f05d683-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e22bbe0f998b91a9742271df36b5072cd712bd219a7ecf5d62a73f674f76e362
Date: Thu, 7 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657156012
