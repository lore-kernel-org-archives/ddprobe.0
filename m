Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E0A23A0
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 14:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647353185;
	h=To:Subject:From:Message-Id:Date;
	bh=wenZpCfMPvfVpLzjOcDbKEe2nszL6neWwmUk20Mlma4=;
	b=RrY589Ig8n2t37ywj1v/1P2POt/LDu2zNn63F0+g1FtFe8b3sngDiRWDvLz7spXh
	VNzC/EJqtCNMvEU1hsAxjQChQQlzfy/7RSbpB+IegHOOpXRo0vdNAXVJcSqJMUoJerU
	i5mK/lk4XLnaxsL1a//Nr+MM5IDVtHZX08gaNjc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647353185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wenZpCfMPvfVpLzjOcDbKEe2nszL6neWwmUk20Mlma4=;
	b=jqg4i+f1ma27LG80+CdqaAoR2stm5TfRE8fMKZHzhzOtG/9g5+MVCXvZSviV5hDQ
	nnD6tBcj7WUFElGjMtADQLmcZBE0j4IsOrb6FSpHsQ65Jckvj/PJIyLWO416J5AZw5s
	ZFtchxlmUrFjvX5IU/4xkzXtwIsg88iQbhDE4Vhs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8de6c1e8-fbf36743-d3fa-43c4-965d-a343d940cd24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f5bd6f7fa220eaaabf509505a2b365081d37229aee82f0e3b847544c21187c7
Date: Tue, 15 Mar 2022 14:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647353184
