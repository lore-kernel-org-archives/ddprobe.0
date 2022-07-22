Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6914A2C
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 17:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658512012;
	h=To:Subject:From:Message-Id:Date;
	bh=nOxD8d/a0o8gsCDQ7CA+rv61EUjs3lOoNFv+YXUZHLU=;
	b=NqXEY0sz2MfG4pVfaZmWPR3Sez1E+nC/3mPtyX6O/n7sg0F7irYPW3LbVqNs9bfJ
	BoGXWBrdc+ZXly6bLxC8+o40ycU56DzWcCgglrG/sgorlaHNIyT0Ik9dD+ZkY2gd2i/
	W/EKPD5JA4o/KQGAe7WtjNv5QOia+6ro4YoyFFrc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658512012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nOxD8d/a0o8gsCDQ7CA+rv61EUjs3lOoNFv+YXUZHLU=;
	b=Zop5Hu5ieZQ9QimGqO4A3L/4Xq/MVJrwjC2xl3ri4jGXbDTSiDLSTx6oH5UxkllS
	+9CedSV75aQVHjQEoU2EoMfnz+Q4XLaYsSVUMtivAcmGl1xoft010J56gzU3CcJACtz
	PbBECKnq12w+BkuTQVWTTKZTmXsfHMdLPytr1N2c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822704f431-06365e01-a070-4c01-af3e-6639344144e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1905c4f61212d62c8bcea3c06c25415fbd60f03ef79b6229a50268d720b22840
Date: Fri, 22 Jul 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658512012
