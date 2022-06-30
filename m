Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B936D19
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 15:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656603412;
	h=To:Subject:From:Message-Id:Date;
	bh=vB4lF/Dl1FjX+eK0OrCi2T39fpLSfJx0TNFv99Mh9+k=;
	b=IOpj4Koc1f26nnrov09n0OF5v5DoIsjEXtCkv3M7VUleZHzr7I0U1Dmiy7q7XxOQ
	2pJvUPr98SYJ7Bf9s72dZBRJWOeQeFJNb7XGC9BQszG9XOkdc+KID12KJJUWJyPRXsR
	ZgU0WvgpVRnZ+WH8V6OESXnY79beZ4SVk0AS62Rc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656603412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vB4lF/Dl1FjX+eK0OrCi2T39fpLSfJx0TNFv99Mh9+k=;
	b=V/P54YK7zBT1ggu7bQbajhI9HWhzZSS8EfEsSVrvo2c3YxNg51WT970TA8SX9nk2
	KvT7DOpN0IZoho81Xw0Xv6huy/b5R8rja2TlOtmWeAxPQYtgcMgUVWfM2OUY0gktUjD
	dvtRD/P/C1mEGwTJ56ACcNxshaancdKlVnmf7Tjw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b5420735-d55653cf-db0c-4d2a-a3fd-795fa0f62e38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7f43212f56889c2e7ecc38f6dc5685b370518131b12cf62ee2134807eec9347
Date: Thu, 30 Jun 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656603412
