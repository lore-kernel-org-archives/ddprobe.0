Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381E77A
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657379812;
	h=To:Subject:From:Message-Id:Date;
	bh=VOKrNe6HtvsI7mE2H7U8n9oy9084IBNhKwkjugDeDgM=;
	b=Az3ZK+cugRyNTYJJ8VUcRza/YqlDAUD2dejjFoMgzL0J4FlgvjYOE9PIcFz23HmV
	fRRBjW12sNdgz0YFJCVdEPLuAvvgRTIeH1bdBNo1cKd0HAuld/7TUHv7HVpPjFsjLF4
	iHp1/h7OTXi0kHSPF0xf8Ossz5/IHBLh/CWrvY9g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657379812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VOKrNe6HtvsI7mE2H7U8n9oy9084IBNhKwkjugDeDgM=;
	b=jy9Q4NRw01DjYqJv3sBdqgvwK1XaMHEpzxWJXKH9T6nvoalDa54Rpwcnrq/0Y9hE
	fmqJnZtEPkgxizg9GirdaJzJ509yBZSDZJbJYTtvJ5J3+Yfx6DIfFifqrfUw1CfV6Nq
	l/ou1aTOk4Dk5rBeztnq1VQhDoemUGYIpY6UZq7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e388f449-83968e74-3fc5-404a-815e-462651f5793e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 376a6426aebdf120ea62d788c370e2dbaaa77224f7cdce96a8c1b5cfcf6eafc1
Date: Sat, 9 Jul 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657379812
