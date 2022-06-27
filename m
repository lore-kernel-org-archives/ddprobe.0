Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5DB2CA2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 13:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656337612;
	h=To:Subject:From:Message-Id:Date;
	bh=+otZucdwPrhVk4CsbPEqruIx3LHdRGwGYPsmIEI15Us=;
	b=fB0tJgHOzJK5jFTKEBz0bKPT7r8oyCqLVybeGDMw0g7jABCnuoxHipoPPsqVzLt7
	cBE9i4iCFkON3weqbXvWW6gvZfn/R/tomik9F0EV5OWNzUXvJS7wIOK5JKWwJ4PVryf
	PDfuGcJOkDrvOqgdObLXAgZcOItBhHJ+QCU+w0lU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656337612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+otZucdwPrhVk4CsbPEqruIx3LHdRGwGYPsmIEI15Us=;
	b=FvMyT7ykkxPudrKZ0Uf67K7TYDy+q6kJ64aq/3lpDEdsa2mGl758jiBtYeSic7Gg
	B9zBx9UdN/WJu8fcacXSqsuXN+/J36ib4vhRPsqFsh+JCB8Q7tYbdXOS534sQxaHqWA
	XZQCuV7cIC+ofOPetSxeNEY7vjUZza6uY5WgsiF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a56a3dd8-896b3af5-4023-4cc9-a97f-88cb61e628ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64117361d1f14b9d809651d74965f25f83d577a3f6457e4c5a91f6a604544eea
Date: Mon, 27 Jun 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656337612
