Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73B0111A
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 09:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654336739;
	h=To:Subject:From:Message-Id:Date;
	bh=N2rP2Ox6LP/Iz8Ivg3Q/3dXm+vxWsJrVly3C0qUYbyA=;
	b=OmiH0zcifFhyhvvVGjL9usg/I2AMR+/zPLmE3ogke2tLzmoDhdqCtkiXXQfVNlqd
	rexUdJFz+70jPIhYdz2YBqm1dX4Q3K++PrA16ld6rbv+gSAAYZ1zepICMaJ4PdbB+MM
	mZouDTC9v0Axi5k8qK1uHOjiBTAwFsYaT0P2eEy4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654336739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N2rP2Ox6LP/Iz8Ivg3Q/3dXm+vxWsJrVly3C0qUYbyA=;
	b=fr+1YmeoBZbDPpp+q2VN5otqppzluYigmK06EWG+XBFuyzFSj3H75yZxxUnjxJKF
	h+mCnR7YKfYXz0Xa4BdpIGwjzLgsP4rSEF1Mx7hOaFpP7NeMN+DP6CkQcYiemlxYEn2
	H5fc8DEpnOmr5ww4Cos+28E91jFkwyOaPV1nryoc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812e275789-2856ef79-4f8d-43b4-b351-4ca0b34a597e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f5313f67c0a91f302d5f658e89cf4083bec898479bcb238b5aee9bd5fc2bfe5
Date: Sat, 4 Jun 2022 09:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654336739
