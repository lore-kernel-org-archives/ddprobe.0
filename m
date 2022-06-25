Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1706429A3
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 18:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656183412;
	h=To:Subject:From:Message-Id:Date;
	bh=agVt016/iRocJDyQYwj+2s5GA6xUXdvJpavGeN/5TnA=;
	b=FV0IBn4Pw9FWNLM8qf+F+JIB+zShGClKohWTEAkpiYpkkbf0szkHBTUriW2tShxv
	rnGqmGYY5dxLgw0XDg5JpcxUa0IIfvhIr0f+Ys6n2tGVNPnMMAGdb39lZ21RBw9ColO
	1USzW65BN1yixRaGHyKbTldP2beQ/woqJSqC+ut4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656183412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=agVt016/iRocJDyQYwj+2s5GA6xUXdvJpavGeN/5TnA=;
	b=MVyIYydUf5L9iynnMgjLx8dcd9YIM012POfqSzPiArOcRg6oJ429Gi0aFa6203L4
	Nqo82/6MyOmDiDoGtO8eJ4yBb3XxHT6uqXnc0uj83a1lGixfxuifooGO4g9SDs81riw
	5sB3JmtG2P85xNVbh8xXrkP9mqVZpN0TXXlP1Jj8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819c395645-391584f2-881e-4d12-9bba-a182daf6586c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8280584032c87a215aa56053b2802c4fa219a4e77f9896259a32d36d31e1336a
Date: Sat, 25 Jun 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656183412
