Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7F328E9
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 16:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652199419;
	h=To:Subject:From:Message-Id:Date;
	bh=UrigYPgG5Z+4eA7vEer3V/cRx2GIhJ20y5Vdf6l4B2g=;
	b=FkV1CJ/bGP0KOjhZa2bNc/q/JXA1dIzwfJGcLmeaYE17whFVSmS4hcUpbiH9ap1T
	FR8CWouH/HV2z/50yREF5KJtUKKOP0UVth2Y5pClJLiSLqFglOZuSHuegRX6mU5iAjb
	hhrTM4ybQMLAZDOWToUrRr6hbbbfBoHsVTIKfcyI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652199419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UrigYPgG5Z+4eA7vEer3V/cRx2GIhJ20y5Vdf6l4B2g=;
	b=XMhRXRGeGthFITJCeLCshtKax/jTKKhkZfDCkBx+puAM2uDI1pATtY0QFsaQH0lZ
	NSLXE6oRBb/58hbNxKs4VAflM/+iI30qci+uy79RG4qo1rK8AhbMzMayn4o4yyeiIPR
	rwaFKTqbme54mru1PtAn5WZU1CqETCBHMrQekCgs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aec26da1-1dfbe81f-9427-4ebe-88ee-492f985fada0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 036a4d57134c2b4d1c6e67c92f2cf85c75410d3b30941424c6595262f5d60098
Date: Tue, 10 May 2022 16:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652199419
