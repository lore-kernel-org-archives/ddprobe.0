Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EAF7160
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 18:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647714984;
	h=To:Subject:From:Message-Id:Date;
	bh=MSyCHZPoLqEjuvJp5mPZpPLRu+T2fiLSN5uT/v6KYm0=;
	b=OaAghkO8lpssLYluy01+RhawDtt3UjQtCKYmB+l3W546YB0FF8/RQ0jCVQChLOrC
	q2T9PAPc9FsZEL/hhASm9yeAnhXpChzfNVte7fieN5qZn2x9bmrUPddkpU5a2QG4CKh
	rDbTWl/YldMxPBlb8hU72PGO+jVpC4hrPiX9VldI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647714984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MSyCHZPoLqEjuvJp5mPZpPLRu+T2fiLSN5uT/v6KYm0=;
	b=idK0QrM2bB7bUiOZvHgCkoY/dhtT4hpmUI/kuQ8MT9F3gBzpPj97mIETnLnm+rN7
	LZ6QMj2DW6+IM9X4xk/fESbNDggWxNnj0o17QGm5qdmVsFawj+8D5VZCQjQ6xkRXGSA
	d7yXVUuUaXjdFmNi3Xdj8xacfgr8R3dXTHHS/5IA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3776346-8616c354-e3ac-48ef-9fd1-ee559bc29df6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bebe4fbb915ac19ad0f0aa410f9af30160462e2c8d5ac0aab6d57d5e122f2765
Date: Sat, 19 Mar 2022 18:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647714984
