Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A87628FA
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 14:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653836399;
	h=To:Subject:From:Message-Id:Date;
	bh=WRvzzo4UJxRMh0I6STUiCCbgDBiRw97MKgDpNumUiME=;
	b=dvTygO7qAgaDAawB7y/R0LLbvGy2SZ29rRXosMtfe54VdsHWk8Irb5igu2BBY9Rg
	uJmSJK1soELB+ypR+aLyt1T64HkRVyO9sNs9NdRe/83//WeUM4PjuhMXM3AW1ly6yC2
	a8Nf2MAgrTZC7isiIhdNPv69Qx8PYq8PobgbapNM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653836399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WRvzzo4UJxRMh0I6STUiCCbgDBiRw97MKgDpNumUiME=;
	b=AtVGdZqL6By9GXwr4UhPnsh2/1BhFOK6rwMn0cxj+RFZCN2oPvobpv2lrVnJFjV9
	qaM1VWPxcEh5jPpCIfodmKW+f3BAWzB5sGEATO98rshkWlcYn4MXULQdEkvw/0cKESK
	pwjJ/ZHRr1XDBlGr6y2t/+b5H7Tkh0jj3WpFhjmM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811054c2e3-f41bb5e6-c687-4d29-b1ff-7a993e641784-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b24676e0e36b18ead5ef38a95b25eaede3007a8815a9b2b0b3b1fc251c8f8ca
Date: Sun, 29 May 2022 14:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653836399
