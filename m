Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8336433C0
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 19:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649792758;
	h=To:Subject:From:Message-Id:Date;
	bh=S18U5nqlRcB4hEU6JoTGdj/CLcaofoLOd/5FeYJugeA=;
	b=HpIMWd0KJ++OEdvgLjwGFoPChjOr8TUm5AXfN8eoLdy9uFLQvRPqH7fVyHJK4b/X
	7KDM85NmDrfRXV45EAz2yozUTV+pnBsvYFlWUpgPnpe2FCEZZZK41bdCq0sVpPcUaZz
	tAO/Ry1MfCYeAf/L02QW0ilZHrotUeLEclqjyTV8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649792758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S18U5nqlRcB4hEU6JoTGdj/CLcaofoLOd/5FeYJugeA=;
	b=Ja8J0I3vu2R8rc8pAPYDcIlNnhnR4P/SwZMxAv4n8o5BfAIF8SiU6WARQLGHqDOF
	FhPEhCd74ykZgOAf2qtd3YhNcgruDgBKkhmQQIQFyNPH3XR8crjuSdiN36O3HV6H4WL
	UuYjfZDPvCHtBCgK8VeT/CLrRIF4QUMzjQEX8a7c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801f4fb212-3b2292ca-771c-42ce-af50-1ef2c98d9908-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19a03f53d8494c12daefaed3fbd256282fd7f6e2e1caf7ca259a60ccc91f99d5
Date: Tue, 12 Apr 2022 19:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649792758
