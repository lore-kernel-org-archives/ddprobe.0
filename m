Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A2A364
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645506984;
	h=To:Subject:From:Message-Id:Date;
	bh=wi1xsG41+sSsPcAsaMJt8n9utRONJEyacYyiNc2l+z8=;
	b=ZbYvqX3qDR0rI5zwCjLJ5NcJq7J+6+sx8T7Zn6r7bJqf56A5JH9//TpGDlfvUXmq
	be1t6ozYBol6o9/qT1U4ennuCVEuXmMjogqAGMoK1kixnBCOB66hVciXB0eGDp/RKJG
	JixeWgq2iVN/boy4ywjoOc8DNAG+ij5SgMzYpFvg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645506984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wi1xsG41+sSsPcAsaMJt8n9utRONJEyacYyiNc2l+z8=;
	b=LDxampU4f4RElnvkpBMgdaDfE/RqxO9BRQzUVXrStwczsAwHXYLfAiv2RODd8BJ6
	PLFqUnPU/n4YJoplu770fJ6jkHMVGLq3pqbzN9bwSYltrD/Bl0zELQcZnrZUw0vyh4d
	dBAHyFaR6Wz3D9F2DQ/Xjui3VN+L5DsOAzzgMtZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1fdbfb61-cb64088a-0569-42c0-80f4-b7f0a097d391-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0438996f71707dbf4392954c46d93f015afe3fab629f284b3f1676669e6209e
Date: Tue, 22 Feb 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645506984
