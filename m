Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7198B361
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647994284;
	h=To:Subject:From:Message-Id:Date;
	bh=Jchqzg94b1Sh6ExA9BqFV1G4LaWdYHe4D6r7ZWrxmGs=;
	b=Ss7QILL3pyStYASPPBxBIBlyjVicmq2T0Q94YBfzwn+s9H+XrwKJQi86CfT7feLZ
	oOmR1jmL8VZ5AO342UQHmI4iadSvzn5xXS+1lx2g+tvYMZ6c836OZ6ud3nb/Z96oOEy
	wl/Vxl4lXSuj0dWWPUxFs+Qw60rz1Z5EaIGDLPRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647994284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jchqzg94b1Sh6ExA9BqFV1G4LaWdYHe4D6r7ZWrxmGs=;
	b=R0Sj5sEjfqmg9CWhmBOy/tpui1khmNqL4mbuCro7AcZpO0RYkocF0PPKMixAA+gz
	q5EECGrrKT5J//VMI9+nFA9Hzf8SDfwewdmaFe7epikDuIjZgovfGT09/BPX3HIkC4f
	DXXS7GlyCGzqkzk0hBmozM2pntQHcOXy7wjMuN3o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb41d2ada-f93da07c-dfcd-4d4b-9969-dd6b8c3b5275-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae6b122531d2f8a7269fbd393e85ff246cbb38ffb1d0d522cf5e9f99ba372a32
Date: Wed, 23 Mar 2022 00:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647994284
