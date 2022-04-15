Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262AE7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 04:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649998678;
	h=To:Subject:From:Message-Id:Date;
	bh=FiA91my4Tb6T5rhn2gO0PQgXQMR30qnKFVdMnDNAWG0=;
	b=MKhcFq+SzKlCrm4JvCeMe2eHEHVpN1xdoHJaKOU7v7R14O5va8c+WTbfBaQWVK8P
	gMewhyYxJN7gQkZyQ2xplM3mjE34ZIa/MUXpxDv65HU+SM/xFbYdcB8WoEK91ZOoeMc
	ifcttBDyVkEYZebH2WVhRuu5GJYglNGvFAyIWDhk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649998678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FiA91my4Tb6T5rhn2gO0PQgXQMR30qnKFVdMnDNAWG0=;
	b=di9il3NxzIxt1EYCBI1oohahLWJVpSOGGg54xGO4eT/Qsl62ZevHjzrGtpRrfGXO
	U7Di29BsEwrEH6/8bWgdLvrFOlUCxKNVewQPiJmk69UDMXXIWaLqV9VwfBeb2NQOuPo
	Zs/7HwU5YQ5F5rQ2d/BNzrjLEasjjeeG0SVb1Zjs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802b95c97c-bd0fd8d9-8f73-40b4-9325-18911688fcfc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f2a0ac2f67d5173771d572da0452c3036e9bec840289747d635e037ddb3b112
Date: Fri, 15 Apr 2022 04:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649998678
