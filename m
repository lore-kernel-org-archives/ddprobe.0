Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030E32564
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 23:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649461018;
	h=To:Subject:From:Message-Id:Date;
	bh=Dc4vevnLbayp7ydYrFQU+n88O9lgNq9ctYVvS36V0QA=;
	b=bbE7Pg8bvlRHmepUzJ6H0iI3LWgDicNqoTHvbbCFZy6rCjXkPpwch6CMMfBzvk4Q
	pkvSTc6fomuSgqOc304K1ZzBiNRH2UEoLvgyUW6KC2xIV+q6x0nYOPU7+j2E1VUUeM9
	R4IQL06cTDUUNsD0csQbBCIbUaMNZFRei5uyYw60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649461018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dc4vevnLbayp7ydYrFQU+n88O9lgNq9ctYVvS36V0QA=;
	b=Wt+n0DtfIRlxfjHUCBGSMYZy3NEFCtzymOre1tS0NokZfYIQrv4u90JJAfoRgi4V
	DICAPgajL2/toP0IeXEWd1OnLIrRXomOO7Vb1jm2PNePYk+dMT80Frd404xPtlPg/GW
	S+EYVxrivlVjeQOST1WgqLvUH9LJEeqdD7x3iLpw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800b89bec9-605a3fec-adf8-4bd6-9841-feb3e1e4444c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1eae52e6ee15a2f374b33cf82b0296f2e8a2fd41f44c30e029db4eadc443fa7e
Date: Fri, 8 Apr 2022 23:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649461018
