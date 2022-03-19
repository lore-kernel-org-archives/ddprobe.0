Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 951F820E0
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 17:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647711984;
	h=To:Subject:From:Message-Id:Date;
	bh=G597W5f6bWTNcBAFyCx3Y+qIhEdi77lQqsWcJwb+fug=;
	b=Q6AUMa3kBgsQM6zCaWHCuyyv95Xgrv43rrVyCrQTYDTqairzQ8Fk4hVwnka26JbJ
	bZfZAmmFlLNagRh++l2ZOJ7bk/VpC0cwbaWa2pjejs3xggoKJndJlg5wzZPTr1UFBMZ
	bMfiAb/1nzwT/up4j4RFRwjnPWJc6KPgbI0Ygo90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647711984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G597W5f6bWTNcBAFyCx3Y+qIhEdi77lQqsWcJwb+fug=;
	b=N/vCZV4/9aLhhHcFD0UT7EeHFOcvggZq5XO2cy7bNOEt2d32zst1PVW4pto3hZoB
	5SZQb2KxiXoJIWrHBN30DaXWPMa2VmXMaHifm4T2ZpAobUH8sZgUF7sfS9JNyLeDzMy
	jjZSzjUdB8TOgEltZqn3pUm0MXFv/pNWXznLwb6c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3499c91-99e63ea4-bc5b-40bb-b51f-cf65a678c657-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8fb3975add37ffd28f5ef5a533f6cda922e22c6328ae05ad3f56e2b00301a13
Date: Sat, 19 Mar 2022 17:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647711984
