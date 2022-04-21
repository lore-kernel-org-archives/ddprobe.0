Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C4B7A
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 12:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650545998;
	h=To:Subject:From:Message-Id:Date;
	bh=Tc9w9sZvYmDH+5el5eUNs4asbf2UsBpXXynFPAcPYAg=;
	b=IcJO2Orx1TkqXC68Z/HutB8A81E6dQC2SZePcd6IcDqLE0CtlhzVmvu8i+UyoUQ5
	lZm8KL80dMKDBL7akrpOAkeQvAECX7CXw54hg0OMTSyN0EMq340ZU6J7x/Guvs7bn9x
	2rdXRMAn9aYPmy0O9Ublaq8kRcdSasjWOtAgk7rY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650545998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tc9w9sZvYmDH+5el5eUNs4asbf2UsBpXXynFPAcPYAg=;
	b=Yaiyq53nAD06ryIn7LppNgGjeFhtNJuAM7JEzEniCgOZJubnvnRC6nCPXBP5Lh+G
	xtxDSj9BvmIwwyFQhufLlKJqweLidLXi1E6KpMoVBuq8LzerIQzsZkQ3E4bxxecHQd3
	Xs50V5DPrgjejoyaD1X0TMK+4NtG8JmFmkCeBYrM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804c3539ff-318d0bff-dba5-4acd-8c28-d5494d07ee3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2df36afd2c80f9690a8e0d27648ee79bc4f1e854c7c956cf41532238f85fbf51
Date: Thu, 21 Apr 2022 12:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650545998
