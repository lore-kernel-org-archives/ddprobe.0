Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D50337A
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660295452;
	h=To:Subject:From:Message-Id:Date;
	bh=2UiL7e9I9kmqO3b/6DbuxzaiVT1OOyWCngbw1o+MDZs=;
	b=MiEgFChIAPqaOrjZqlxigLCa/qP5CA/3EnPd4ERso/9sZ4IwWjb8C4252Mo7oZER
	YXbQXbKVOzPB21WV+3g6AxbXAJi+bpG4XNgj2ZmvkwUjlyRn39kovbYZtZ/ctcXy4MX
	NY7n+nljWE8voxHlY+e85sW2hknBfLsi+5ilaC0o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660295452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2UiL7e9I9kmqO3b/6DbuxzaiVT1OOyWCngbw1o+MDZs=;
	b=MglbnXUe5z0BOjkXf3E4UPVRQlq5RA474IEFgk53NjYRwHoImx1oQ+o1BR/ogCQb
	S83ImI+2PnwrtkJH1yPJwqRHkxe9htZQYNDOJMGnJuxjXlW1zq/fsFh6O8QiyULnLxz
	78LT0r7xd9qETQmjAN9SVpfS8DsRkgJ3r2Au9ZuM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018291521773-e5ac3b17-9cb6-4b9b-9088-59841a1ef827-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 598a66cdaab2a4a74c7b0c89cb1de470057e26907abdf5f6e675b3125594f657
Date: Fri, 12 Aug 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660295452
