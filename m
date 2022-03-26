Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD169322E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 20:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648326718;
	h=To:Subject:From:Message-Id:Date;
	bh=h6MDgWAM1SvoSj93uA5u4oc3UoDaJYXsZ6kXXSYwXSY=;
	b=f0gtyqBKwdkFftm90qucHy8EXnuRQRafm6UdVqwFdE4rUvxxvSQoQOP1mXOzs8Mu
	WBVXr4LYfXAHkvmqLZNvYbqBuXi0XNDyNVrSEvAo1RSISROwSMxeylz2zh2Xs3trom3
	rwSY30qnfFRBJxIcEmX8l+gU7dofflOYSKxOOMPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648326718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h6MDgWAM1SvoSj93uA5u4oc3UoDaJYXsZ6kXXSYwXSY=;
	b=gKP5e0xSJN1tpCelD/liiI1gEiXfVi/2HoPKpy+V0hZeivMaggLLd3Ye9IRzJ7g6
	ZL7Nh2BTD0NjL6GOAb0OZqS08f+ZSiXeL64keeXVGS9PxKcFkOCnSczCyFAVus5rOc4
	MDvhAaqg0CK8K7iMFUkZzpptA+TIgNKk9sgMhflE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc7edb337-139878cd-09e5-46df-ab4d-c77c558660e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc7d6973c2b5dc59b1fd3b5919c6ee0ed8a363e186671feb7e9506b429a35578
Date: Sat, 26 Mar 2022 20:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648326718
