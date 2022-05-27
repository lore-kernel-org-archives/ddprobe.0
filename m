Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F861FA5
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 14:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653663059;
	h=To:Subject:From:Message-Id:Date;
	bh=gSX/+kHHBcQXd5hQWsvAyT7s7FElo9VPAAd5/SYBRwA=;
	b=WEMUDdS3vJxvqlYGfSeReYC28KrWIct5xIQ6033f/wW8584tH+ajxNFfrzoBSWR/
	yT9F1WkmNJszW8txITULd25iGs2yp3AyHvSrlx0k47wiTrFym/Cs1e4tOgNv4wmMn3r
	NkiLuRsC20UDAlVFCytg8Vj6yCDzCUZeWfTizm8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653663059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gSX/+kHHBcQXd5hQWsvAyT7s7FElo9VPAAd5/SYBRwA=;
	b=Bu38uITtqGd2y3bRooB8IMjWfST6X+XjdxIJ3s9racUxT0p+fMTfxy+rjPFFGokX
	M4/3Y+KmUpbJ0cpCZ8r9wDjK4d9rdju6Pgbe6zs7/fA9TBtvl3OqcM2f6SPPPnqAOoN
	ztg+fOFxhjAGRaiVQouszTTeU4y8A3BZcYwS5ai8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018105ffcd75-872bb7d7-b90c-4e71-a791-48600e5bf9ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5963d53a0981717288c3f550c9d5c354402b7d0c6e9284db2224fabaf57ce730
Date: Fri, 27 May 2022 14:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653663059
