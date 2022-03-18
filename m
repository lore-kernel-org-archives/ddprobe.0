Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF774C60
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647609085;
	h=To:Subject:From:Message-Id:Date;
	bh=VHkOQ4AE0zr8+aosdj7OiikPO1+/JwCDTNKpGiVPtIw=;
	b=NM4zLSUSGXm/7QAJ74Uq/WB/gANH9wcUSNYnBZfdoc9MVc5d9NESYultzzoPl3MF
	AYOepXfqTZzvxrFRQsEa/WFAwvXtcxbr0Ml07A4wcHJdJilD/RqSfjd1CkqnjruUSmB
	SLB17wJmhfu/OGozGtMv/fQTXP7g6wvEM6oG1TYY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647609085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VHkOQ4AE0zr8+aosdj7OiikPO1+/JwCDTNKpGiVPtIw=;
	b=O6lNxHhZKvPRhm+llTFxdqjMV+ujRnbX1+P2oMgxLWTniNSwqbWznxITnOOc/zzK
	JTXwHC0YH47esZhyE1Tiv7Y0qx2w7KS2uoicxuPtnePqUXiv+gy/8d2WZ6HHi25g63L
	NtUwrS/pYjqedSbWX+Rv72j02I+5UkAH7Ap3F7X0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d277b5f-994e719d-1b5d-4faf-a88c-2e3ec97bdd32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6aeef7630da1f978d54098ca6cc494a8735a20c1de98b06c849895e8cc1aee30
Date: Fri, 18 Mar 2022 13:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647609084
