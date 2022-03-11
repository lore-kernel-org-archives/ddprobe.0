Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4D232574
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647034284;
	h=To:Subject:From:Message-Id:Date;
	bh=mtkp6SSC4gUP4+SlOfdkXjtMcaNh8dDXMk/p7yQdWXM=;
	b=Qf1Kzh+4vX7IGEpwv8mmuly2ItzD5HmmcMJUAOqh8onatTZyO+3P/SL/5aTkZOGY
	nC/plwmrLDbfltsYxLhGhQrvoM3UFdURUnXK+p4FyG6sW3BnjkJsZKZfqklDY7BZJam
	lFzlkNjis4aK7hcJMqFucTAsEsTDTy/a3q5alBcs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647034284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mtkp6SSC4gUP4+SlOfdkXjtMcaNh8dDXMk/p7yQdWXM=;
	b=cxSUdkVDFci9OI109hLrpVVNmLcp9KGb/vbbE4HdISytnXpbnwxQB+yL1ntkMiRa
	/pLdZyFwrQV8K9pB5EKtp/yNEMyjrRpQixSOoO4gRLfxjx0CDcumxXB5eNXYIR5LvhY
	UGwHolakNMPcTBI0nF8iwWoFBNuk98OZtpanJyeU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ae4bb09-ac7ec04b-37f7-4817-96dc-9a028e04028e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b1662d2324d3c2e7d9669c4d9771b3bcb15a1e9af5659bb5c16697c75b6bbbb
Date: Fri, 11 Mar 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647034284
