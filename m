Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE6BA3D
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659676852;
	h=To:Subject:From:Message-Id:Date;
	bh=+r8dOmMvOQN+JqF388w90BxMPMoWDMOsESFJkfEsSS8=;
	b=IpLEc2jPUXGwT1or4Bzh+vilenJ8ndJ8wJEqycRh2g0ZysCCGQOzIxmuxIK83Spc
	Ip/6nPCSH/0t2fACprrJvZdGUe55DI0o1hwGigv6FMdj+FSh8KZokb7PM7uFXkfshj1
	bBM4lPKm1oY9GDLAoAczsdkVDBzUe+D8LaNKPreI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659676852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+r8dOmMvOQN+JqF388w90BxMPMoWDMOsESFJkfEsSS8=;
	b=Vkf9T3+M05fofdW4UXnG+4HQXec5G5X1Bn/8Nc6Wo+seMWkTNlvi390dWeOfEJRJ
	kz+L4w4ardLIsjkDxrbFzax4thNTdgO3S1K/eFMO/NAJ2IgXgFt4wJHS0a8h0V1yPZ6
	9nK5G1qBM2gW7xrYBH/5Tl/K0zmmBLn5RToyDq80=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826c73014e-cb5e235b-cc03-4ebb-a73f-047691769480-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92c83d1feae41b78406c888126d84efd1305cc3f83bff5236a335b06bcbe656b
Date: Fri, 5 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659676852
