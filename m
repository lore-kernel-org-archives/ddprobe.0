Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E55536E
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647837385;
	h=To:Subject:From:Message-Id:Date;
	bh=75KjYWZEWJBRXhV2jiDGxK4DnSJ2xwNEr6HLrfD8ZnY=;
	b=eRN2fC7u668ljLSH7fTZwXkpeZEg5L52G9kxljaZ79i36obr7L3TZpEDA91AfuJ7
	NcAzjMIJmqRFWRfb1GKU53GwqqhukcqTxIVB163kBn4nSYHXidLntz5G8YwWjiC13K/
	6aGiLQUORZliM6atHFZ3YXuovbsO5p7NxmTesdDk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647837385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=75KjYWZEWJBRXhV2jiDGxK4DnSJ2xwNEr6HLrfD8ZnY=;
	b=ZTMrxcfHYa+6DnTk/OE/AYyHFftecUk37XD4OvT/OtqGp34rNapVMLP9m3qk/L+H
	ieTMLY7Wbu5wdvMG80131j0OxS6OVhpdOwYCAMxo4bCq+MbBVtrxneCj4NoSsmC5U/y
	Oo6RFBLdbfGJJsuNnfJFfuPxATYJ4p1vD4Vz2kg8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faac31078-a7765c8e-6ee2-4511-88b5-9d8c7c984eff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0485b0497995ae6b2f9237fc3fcbb8f2357faf1eab2be58d59000e6dbffc22e4
Date: Mon, 21 Mar 2022 04:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647837384
