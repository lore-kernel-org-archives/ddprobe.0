Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A91E258E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647038785;
	h=To:Subject:From:Message-Id:Date;
	bh=+e7Zmqow2O7axSQ5f2ndKe5k6COuEPvrcZMC9iPdf/w=;
	b=Boa9HjkrhoB93AhqziiinLoZNcS8ymgfCs3z6DKjuJ7dlPj4+un5tvVMEs366ZU1
	FXRDhja+hhdIR5YODt5S3tfTH45RB8pbKGJm09RBeV6Lt4y2Iv82FozuLR8BJa79bsZ
	3gAy0DjhYfY2fafBhRjW7FAxczEl1iXDuxrZJk10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647038785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+e7Zmqow2O7axSQ5f2ndKe5k6COuEPvrcZMC9iPdf/w=;
	b=bKDBnaSQirJO+9SN8Xm8VtCSgsMz6fPgMzVYTPskCUgIe064+M8Xsai20EQGtviA
	UsCr5gF7v/A1BBhKOq5+ttQ0zX3w0NEIdtTfZ62ELL2g/VlcDxP/jYFTPCARlHcsf8B
	o6+heZ3E+95vWG928TIaIk20cCufbC9IKVx2v/5A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b29657c-9a8376f9-8fd2-46b7-b3ed-d577dd12aacc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc97a88632ec2a191c7f5acab106592446369a7f18555c325c7e36f5eb05b085
Date: Fri, 11 Mar 2022 22:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647038784
