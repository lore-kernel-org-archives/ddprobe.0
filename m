Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBE5256E
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661259652;
	h=To:Subject:From:Message-Id:Date;
	bh=rROD7zMP/RjHVH7TqmgJ2gImVQ5tktLJISL+gtXsu04=;
	b=fWVUBMDQF6geYYkjOAUiZcznWhHPWyUCUshAgOCOzyJEoxrwVb+zK8hJ50UYiZ6+
	wieJtmtBv+NjIwu6lrTBhC2MiM5aFt78j8MGlUlGJ80jiuEPMeQ9q/AdIk5DoJ3xubf
	Np/kfqfvIrMbUppSokCFBiZZ340AgAeT0/5A5bOM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661259652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rROD7zMP/RjHVH7TqmgJ2gImVQ5tktLJISL+gtXsu04=;
	b=ilELE6z4D0XQltngefv3rBMb1+Ad1ALi3E1YHz7DKQ2DvCxqkEy0ew8yV9INOVfH
	JIgS5Rb4CHXdcwb5omv5FF5oJEmpTybL6maZZZs6J3DiCtZtYJTP1sfohp2p31xZCLd
	dMLhtZpLmK0T6qGF07TkSZXbn2e5q4s+mkanat4E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182caca9df2-79829e97-cd43-4dec-b21a-813f3f5760d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e071ac6785530cd27a65416f947a93894fac7969e5c1db686e4293cb76af563e
Date: Tue, 23 Aug 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661259652
