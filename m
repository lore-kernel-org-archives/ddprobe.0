Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535F77F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659413452;
	h=To:Subject:From:Message-Id:Date;
	bh=VaPpkFk3TrHGTjwLUx4AnnBf/Pb0hcnb9E7W+7ugyYo=;
	b=AjlRGPpFFuDH+22q9Aj9wPPHdP9kd4Xn3ccH2dihADzX1mkBy6z8ckXA5vJ2/oP0
	Y/coL4QXpyrU7GPebHMpFJztViy3kVc5StPUraqqPiz4Y+V+lgxi21lH7c9ODeT7U6j
	5GDBFd1PyH7+Uj3FSPidk+4VCkSvoXRQ9u4DSB9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659413452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VaPpkFk3TrHGTjwLUx4AnnBf/Pb0hcnb9E7W+7ugyYo=;
	b=f01/+jweXUdbd1bBEA6m2vTMBwEug17jUG42Y7IAMzIE0uvJ3GCPYsfx2e6JWRNQ
	xTM8aQEo88yGYZ6dENHg0oonYvkiHKcPiWi/pkpqv/mFDrifuSBPjeNDo50cAj9A9sS
	+nyT19Pr4M3Sv0akmtnmzHcVxUl+DQe0OGISjN+U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825cbfd6fb-7d8698d4-b463-4f77-9b62-ca713a69c4c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f16d048c04ce8ba8a94ee7dbecfeaec3397a0e63d80e10fe8b7b4ec131ebcebe
Date: Tue, 2 Aug 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659413452
