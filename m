Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B65B31851
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 08:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655196179;
	h=To:Subject:From:Message-Id:Date;
	bh=YKmjiJRgbk08+fb1tDMIY3v3IVUEemX6ve0nRD4/2Bw=;
	b=X+TT4aXAkyS9BCiqiT4OQffGRbfVth1jkodIKImhIkJ5m+Ax6gnhCbZIeUAeRxb3
	Cbp23mVfhJE1iB0WQhv0q+PtFWKNo+jAFY7e0v+9oKdTCN//JzxlIetcjQ/6eA02EJm
	fDNdud+q29yVqtve9p+mc/rpd3DbAPanimZGROwc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655196179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YKmjiJRgbk08+fb1tDMIY3v3IVUEemX6ve0nRD4/2Bw=;
	b=Z+voRDPENLtxVkdzn5NUPgJuiyILgy3inFozeCurpDDguFGART9dVwBe9cst9vn8
	MY2XnS23l4x7reH9NQ1pr+d4Y6OzNPD97sYs5YiBnVYHRe+/iG59CuThf6kSRQAo2wp
	dHYmDWHP4w5PKEmeE5VKrz1Q5zgL//3JuTJcLu3w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018161615b2e-fffeab8b-3ae7-48aa-a656-2683279d7270-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d8c831e9ea06da1fa094a7e220aa3fc8ef553c1ff397b5b59c1474e9337951a
Date: Tue, 14 Jun 2022 08:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655196179
