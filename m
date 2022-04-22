Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2762901
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 15:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650640858;
	h=To:Subject:From:Message-Id:Date;
	bh=mF2+iFyfZw3VoDJZMncI7s4/Cjk1EF4yhChurSGjeGE=;
	b=dUN8u1KQ99u8QAduq+3Y8wNQ/IguWnG0VirkdKoNefyKVCMCGvwcopP4yynM12xv
	V9R7V6svbUuE1X8PoRfhgdzf7s+DUQUi+ZXr68OYSWO4gVTKHGVzAS84zRfaG/0l/VW
	D/r+GoN7P4ffr85pTLDhY2X+YHNf+Tt7h9xuNOGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650640858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mF2+iFyfZw3VoDJZMncI7s4/Cjk1EF4yhChurSGjeGE=;
	b=P4WfFRUctGT5woj6PzfUq56CryWgPydvzhwRE5Tq3F5WT97W6IrZGK1//KSFxhuP
	VkyXErkOofleCTzaC6CoA+MlTaxsrOSlKsrvzL4mUqmhJ9B7mMeVAAikMoTc5eCkOh/
	PtEPlj0p1CqHRZU8uNqnExxpvtoMcYYqg43KMcaA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018051dcac82-9c43bbea-814a-419a-920a-4d8dc9662f9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0773865a9e1a542643328c45b4466ed0ca5431c93c4c7fd7f3b895db964d40d6
Date: Fri, 22 Apr 2022 15:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650640858
