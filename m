Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5693BC80
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644921084;
	h=To:Subject:From:Message-Id:Date;
	bh=BInZ9JL+2VzrVFNAp6/au5E15+x7gkCAodoi2zXbG34=;
	b=loou+V+XBz9FSivwK674PGlKRoDzTA0X3P91A7Tx7wGiNHGsPJs4gq2FHZ3tGalo
	haqmCcIt6OGxv1DOj42zXweVejGluV8WOOdEoaQr1UV0TLtbBUVyMVjVzTgHkZCYB59
	AMK+/Auuuc+0RA0GqfiD6XadrY7HO67mXHNLlblA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644921084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BInZ9JL+2VzrVFNAp6/au5E15+x7gkCAodoi2zXbG34=;
	b=bGrCe8hX5/WjhHSNjHINSF8fVqXlvXED4lLPu8lgEaFTq4wvohsoz6FwbVZPINVi
	FBfKK40udOqR1UZ7c2flQmAI97PSC7ouutzhr4KJYpmwc1nA59BLheN7VqIRcEDeWRx
	/yYNSERuIMIwFn/w/Q8VIP+wn7l1LMRpsT8qBU2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efcefdb80-a4af524c-ef9d-4ae0-ba5d-509797c6c6c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdd969f6aadf50bcf007d21fd9182475bad25dd69a4d9ff3a4c8eaa3c50a146e
Date: Tue, 15 Feb 2022 10:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644921084
