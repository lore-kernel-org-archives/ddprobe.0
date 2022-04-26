Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBEE7B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 05:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650952198;
	h=To:Subject:From:Message-Id:Date;
	bh=+usFi8JoxXMZLwVQMhwewpJSsywf2tEVhyHtgzNLn6k=;
	b=Srk8N+HMFTqcRB59wrpwYfungYC43Z1C3d56AGMwdKgFuayiQTbj/XaPV8JWWKy3
	Nc6or7OrkN94s9afY5ZYZj+HP5Fmvnv6Y2ZbQDAGmFkpJAz3Dd/mSE0Q88Rs08+rqXs
	cQYuGbXICOd72In2iQXfIVQr5Uy4zuJx3w0X9Q94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650952198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+usFi8JoxXMZLwVQMhwewpJSsywf2tEVhyHtgzNLn6k=;
	b=YpGdTyNNHn+g6C660G4ZddE2Lntf47OruKP10koeNFz1FpX0NKg3H8BIAp2o4j3j
	J3IZ+X7qCTIGZG4x1spm/236yig+Jnk/MbnEMysuAT58mqzl+B8hG3X4yAf1UMZMUeC
	f9VQA4exOeTd6ObAM3YnTwdXdlNgpNDSxWKElxoA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180646b589d-d4e9977b-d1fa-4e54-a017-e6ff2b8b1063-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0fd4a63dcdf37da5f2c6b7f33e85f59b32ad2956686d1666f5982e71d7a17095
Date: Tue, 26 Apr 2022 05:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650952198
