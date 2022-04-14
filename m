Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54877A
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 16:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649952298;
	h=To:Subject:From:Message-Id:Date;
	bh=GuWSRoFV4lIprSKvkFZWBanp4riDqAeAyh1BRQioBVA=;
	b=JBBN72jrUytTHQbpSZ3n4yhzTxuFYEArDWbcM4AnvLV0oL8OLt5opNAp1TDXPPzx
	WZFLdrKsLJbQqBX7ULwh9fHoJU4UhQeAu4VsuIO5FV7Jqlvs+kDlwaLfvL/Vz14sV0D
	pHulwNaMEQrpV8eO6jna617PC6rc7eXGjmZcZcaU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649952298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GuWSRoFV4lIprSKvkFZWBanp4riDqAeAyh1BRQioBVA=;
	b=bLHkKQPhtWcU4IlX7Nd426oa3KV6TsFqAcV4X1iA/6QfKlLnXpt2KaRNlDoeTr5x
	snqbGfN8W0EUra8F+M+vgVNC7VtwJ1y5ZvIybxkNkRFDCZTG5koFPRmap/b/JBmpP7S
	PPt8gXSSSk1OwEhrSRdKvNW1VhByWRNGGHWhVpng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018028d2152f-8cd843b9-4045-45ad-b6d9-d17872a1472f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45bcae373691568138982147b968b187a2594bea78a8871ce6e08533133affbc
Date: Thu, 14 Apr 2022 16:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649952298
