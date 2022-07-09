Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11846EA4
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 12:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657368412;
	h=To:Subject:From:Message-Id:Date;
	bh=899oqYWD211xbmH8UBf2vngGhHwCvfjmAvrAmG5yvGQ=;
	b=LNoSQqG3oP8PRt9Ul3Xdqp5/8VPfev2NUJ0qqHUx9wfB8lV8/nH3piOdfCIqSs01
	hPU35fFsvIbRswgyHslBoqjETDRXnysDcyN7bkZUzbPVetBYN0PH7zgSAY4eKOYH4Hg
	QKB31Pw/Jwx/THe/te1M6nU3sRNYBgQCnwCrIC70=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657368412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=899oqYWD211xbmH8UBf2vngGhHwCvfjmAvrAmG5yvGQ=;
	b=jcOMBw1hBNfNuXFfgJZT3uPN15krR9oONnT8dhe8kij2KJaAXkCbAACjX7UB8xQq
	NYpYvYqaaK0OtWb2jG3sgPU8SuSstC0GHGk4stkAB47IGbgDZlBdZRThn76hukcPxY1
	moOu5KHaSWz5U+oIIDDVv9eigiLv3SrZPZJlGV+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e2db009c-b1e4e132-29a4-4367-b112-7a8753a224d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3373f202d1c52a8bced07f0aab9e07a8405f0a77c43e60e8e4539ed51091c947
Date: Sat, 9 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657368412
