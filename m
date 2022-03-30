Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634802F46
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 21:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648675618;
	h=To:Subject:From:Message-Id:Date;
	bh=RP9uhR/tJZ1T4JkYPxrDhehzKWdnk+5TRYXda7rFcsI=;
	b=ghsLGexu1VEd8++Z631gQBluOPODWsEXc0LbpdVi8dn4mWvItVBkaNw63CyBDYDi
	BqDPSb1Dc14vfNfvVteE8l/2xHHu/1m1eCGeW+QCsvoN7G4qyOwn9xz6KZ4DSPsEBf9
	3B1ScXmr7KYNXDTh0v8N3PrnBR9U2CsmecGGb9dg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648675618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RP9uhR/tJZ1T4JkYPxrDhehzKWdnk+5TRYXda7rFcsI=;
	b=ahsJWa0YusUUf+PBf39UIt7RF8YcYf77F94VHX6I+ikQlJ0cSg7P4yn2ltfL5GT7
	iz0YMqQdtAtfubVARIRMrIvRcfKg04Sca+R1Sz+VEZY7ODjODtGpMq3ZmPvf8V7YTuy
	3DfhSPpnGnzm1LpEq5AEL/FL8NiqUtf55nq32DNs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdcb97dfe-565a303e-7350-4eb9-8eb3-0717bda3e2bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5bb0f7eb7bb390912adf2daf8f180e9d7357018747175a46152f8e55b2fc8c3
Date: Wed, 30 Mar 2022 21:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648675618
