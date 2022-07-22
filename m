Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049AF28E4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658485012;
	h=To:Subject:From:Message-Id:Date;
	bh=wjwB1JAzibm7lmKrc6lFArBmF/fjoTMYOrimAp0ZuVM=;
	b=kRODxmk7hjb5Bok9GYHiIDl6yqqV1Gq9uXDmKKa4b009vvUlFCVONBR+nd4gWADU
	7v43bHTGs6MwoFjxgmgYEd7ZGuu4kYBAWV8ihb8cH+ZXr8SEssMr5MrQAKeTBPshYT1
	D/Ebvis9/PJFwHkldznyLmQsKit5kA2KExG0+Z80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658485012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wjwB1JAzibm7lmKrc6lFArBmF/fjoTMYOrimAp0ZuVM=;
	b=J64QZE5uZ5Epq9JE6vV1c7ZUQYSQw6/S6synALCEK3STlah5mJnz8sVfZkBDx7RO
	wUiuyKEZocuhIEmfAG0EZCFiVjn5mAZgY5NOmgiPTdJ1IPGefDZ1Wy1Z+RP83vRbuei
	urqVcXEfposJkzgiHR11XESR1crQZN3LQy++J6O8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822568f737-b79a8cbd-9857-42ee-b7fe-2356e9bcf3e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e024dacac1e5207be6d7ccf3dc9d36507143eb8bb77101f2f2efa082697d90ac
Date: Fri, 22 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658485012
