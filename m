Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBFE7A
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 01:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646096485;
	h=To:Subject:From:Message-Id:Date;
	bh=RstIIa5LISClABY8U8xJ/3bxfWojs6Qh/VXg7YbFo3Y=;
	b=hhf9nvERGI3SNdCBhdyua5029DUYVH7/1NioJz5ADsDRaNZfgYmya+djeLCivB4j
	V7BSKHSbF+EykEgL/q+ZItNxULonL5ubELz4ARt7oOF0ukpLPh4tiyQYoRsYMzDUFvc
	gJRoqxjz36mThMEF+RTIozgwDZD3gG/K7ypwOsE0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646096485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RstIIa5LISClABY8U8xJ/3bxfWojs6Qh/VXg7YbFo3Y=;
	b=WdOJplQ49VdOBXxcxOtF0hrI7vhDuAEp92VD7tD0gtOOwvdwYCeHEBPbQxO5Qe+z
	0ZTPPgpttk43XTVI+O/8Gm9WAbuSMS85NxahYoxgGH+H3G1n9k+lo2gdNXDQ2nlhDvx
	dM8zhM/GXAEFgwDKh2HxrCWxVXZBj2Tk62k1Frr4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f42ff09aa-12c339e7-bc0a-423d-a13d-444b4c3a675b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d771bf859f2be0d8c46913a8c14aa2693f8710771d3a40073d45151fddb7c97
Date: Tue, 1 Mar 2022 01:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646096484
