Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D5D1367
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 16:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654274879;
	h=To:Subject:From:Message-Id:Date;
	bh=CASuGyI2POLCAwe8pEnbQw9asfknKA38QQRWSMlz7Xw=;
	b=EFKh9+Zx4pNHZcmB7NiBN/HfX+sGS9pa2B99TPt9Ml9NY/Sy6CKFaxLz7+lsCXQx
	zm8U7DzhupGCQJluuLkcKeE5SB5EFdJMj/JLt0Lfhv6BtKKFVLrEJdF45MIM+pMa1VL
	Be7Bhh59lhvY6knQC4RScoQ9JBVigGFViJcbWy38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654274879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CASuGyI2POLCAwe8pEnbQw9asfknKA38QQRWSMlz7Xw=;
	b=OX4th7egWeWL63Mk2jfywpUaQwySG4dN1HNOAI66RJVdwgivHRLv7HkzLJvq2i9U
	H+N9QWGuJMBU3Af5lWhRlluDK8YDDAJJYI5OoS20qA8LlyB5mgosfQvlwG7/BldGW5y
	2pXJwZHE2nz9bB5/Ec6GRX4BetAfV7TGF1vLyKIM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812a776f29-7fd94d54-d5cb-4c71-af54-ad50ffbc5bdd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e012ab86098bcdc0b5b4316b78c51059c23e41932fd630ade53b6e5b77375594
Date: Fri, 3 Jun 2022 16:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654274879
