Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A66A1847
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 15:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652801879;
	h=To:Subject:From:Message-Id:Date;
	bh=PsTjh9dWGwR8YpOy8HfkKrcJzqdb6X4phRRrlHSaxRo=;
	b=ctxWRBiX+BbWCTfga6tZ/2ajYoePtFIYLeIA6WhdZT7WqfSkjaAFZVnOV45OLjFG
	5RpBiyL5swVwJBYv0dloxAg1zhgAjdzBNOj4aT/sUrPAGJya+HA/XvRy9pc2w/N5vgZ
	X1a7WO+yfJC8YhaFb469ULf7iieQgci9U2Hhf/vU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652801879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PsTjh9dWGwR8YpOy8HfkKrcJzqdb6X4phRRrlHSaxRo=;
	b=iOv87+Sy9TL5eH0ivv5kMaMCSh3nsq1dVPE2CLhv75m7X9QZiaRIl/fUbGnSJ08O
	+5bXfs162GmdAolHv1/asK1HxywcM+hyNGGalf0s06YBf0qgiEWAxYTEU6Lhy83lq5J
	X7nlsMJScL66muBWlgls/EdRt60l1RpEPqKkQYEY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d2ab3ce6-9c3d970d-d9be-46ed-8f6c-b4e60e663482-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc2c7fb1f30017a7f43755ba56fb378503b6f1984b7c6b97862b9712ead04ce0
Date: Tue, 17 May 2022 15:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652801879
