Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F19D366
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661085052;
	h=To:Subject:From:Message-Id:Date;
	bh=tUNIGveFsOJwteZubyc3aMf3lTX2sqAUgtjjdIYWRPw=;
	b=OrEaIG0aRCZp67qosZvgudbNVm0+i3UUH85N9tyTmSt85i1KJ9ttBMx7LqxKn/wG
	YxxrsWLZHN27FOL15nXefzl27QKhxpt4Acxo2iNExSra7pQoZP3nOsDJ4FKYGyWJRz6
	KD2IgRRixSJuVvcPAKugXQlQqbAebRKCginq5LQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661085052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tUNIGveFsOJwteZubyc3aMf3lTX2sqAUgtjjdIYWRPw=;
	b=OUfvXkwbUIHLqStqc1s8rRuf+CZ+jKi0c1czddQmVPiee3uqJmJHSmh6FGY8dkwW
	Ew+ND5XrcMtBdBuGX0nBSb/zSMV+p1lCwHQlbbICHdlVwMXrE7/lpnusqzv03c3wHEY
	0dPeOy/3huRaorC9/GLV8L/MGT0qjoegHUkiZarw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c0626e9f-fe199558-c379-4b1d-bfcd-ca594bcc7aee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8328ea5fc97f181035ff3725236241ce15541e9fefe0ad97a44e59dc2df7493f
Date: Sun, 21 Aug 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661085052
