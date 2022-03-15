Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF531FA1
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647338785;
	h=To:Subject:From:Message-Id:Date;
	bh=zj/ISuG0xf9jDRvQgsINkgjkxtR5F4TpXu1XtKPJEss=;
	b=Ygs6D2PfWV16y2Rr52+r0bxxkEH7HXXbwc04Jo7S34Ps8+uqpZWBqvT5FwN6v60v
	082fXAwnzLXpbcg6NOZgDIi/lzfonnhVIxVfXC+r909h9lofaVtPdunjW0A8wMYl05o
	wyfOH2sZRLxZo8DLer9QyjnWYtkihaCAN05XXvB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647338785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zj/ISuG0xf9jDRvQgsINkgjkxtR5F4TpXu1XtKPJEss=;
	b=T+NhWCt9Aa8QpjLdLHkk7eupkvRugyyFjR+VEAjWDUy2tytQvllwKgEPX9W98b1C
	8O8sw0Kl2QwTa/CXZ/COcbTHxo3trcIp1ewvcA1PfKzPwMFTqmocBS6TRYtHpYA9CXC
	nVT9yZtvwZo6PRKNuUXm3bidy4cYZtVY2vL/6VDs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8d0b085d-82d6943b-a9e7-44e9-95af-0fe44180f5b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebf228c8f32648c73abd2002918c5bc9af62b3f0d3dfe14d66b84079d3e6d778
Date: Tue, 15 Mar 2022 10:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647338784
