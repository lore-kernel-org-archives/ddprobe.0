Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C3429A8
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 18:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649442058;
	h=To:Subject:From:Message-Id:Date;
	bh=aFqwqinDVRQdjDFKw2CfuQAuLHm4GEXpaHQMAQsxRQU=;
	b=djP4lH9yByMxU8KDkCqbteJfljKWR8ICX4nWWCp0ehMd7TyfYe5VkK/mi20sA7vT
	Mc+mLnZItfW1KAVXdJ/HFv9wM7sdAj2j2s8uXNZVnwu9zqlV1SyWipDbdgS8/HgSUeb
	B0PZxYxA2F1nJIHCKOUwIOnIF0wsaYLA/H80wBUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649442058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aFqwqinDVRQdjDFKw2CfuQAuLHm4GEXpaHQMAQsxRQU=;
	b=bDc03L6EANOjusg90jG2M9qqhTiURW1b2nQjhnijzfykGb6/ASqn2tuVVCyxFet/
	1kt4pwhkEMWrU1ERr+gamtyKHZB4A+ZkwwOxppgR0M5voRUyRnQUeIwHXnYMmQicJiu
	t4MSEh99pMkxn/lQA4ItJgn9xXi3iKgBegepIKQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800a687047-7dd9bf6f-3ef8-4f95-bd8c-3b34ee50ccce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4d0f482f71f0eb70c5c3853aac64b004cd508aaae64cd1c3b05e6429202d60b
Date: Fri, 8 Apr 2022 18:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649442058
