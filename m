Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115C97E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 01:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650937498;
	h=To:Subject:From:Message-Id:Date;
	bh=U/X834lkwgXmWYYeVQfQG9Bb3Ed2Gl0CB7ZuPvj13S8=;
	b=Dy2yCGDTe3AvjiEuDdgP3D4qkUNd+E+mJ+/P3RL9GCE4aoW+vCNYCMso8uJ3YABt
	GXaX/UXBKnqpqrR/fr7EtELg2yzoPu/SH+Pp20HdKZ9ZxkgiYeUDnxE7NAE2abMewVi
	ktC9WlCERlsrubEoDtHkLt69BzGVp4btD5FSkPms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650937498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U/X834lkwgXmWYYeVQfQG9Bb3Ed2Gl0CB7ZuPvj13S8=;
	b=C2PdxYzHobgEuXVUXOhPlVaDyjHQSaF30K6RJVLbgrQRpTEAsAjri7Fxnxu49M3l
	0a/pTDKgWC93r+oRAnX36UfpEXf0+dWIXmxAECwR/P4Y46kEb8ToYjkky/7iqiDMuHG
	2X3OAdwQdz7+gf1QL0MFCdQHj7x866Cw+oPl7fZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180638b0abd-c5a13fb8-0175-4568-8592-27388bbdc7a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a6ed0c9ef184d164331d8b9e4c05a7fe48f84ae244c758aeac425b63659bb77
Date: Tue, 26 Apr 2022 01:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650937498
