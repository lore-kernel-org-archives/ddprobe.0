Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5947B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656497812;
	h=To:Subject:From:Message-Id:Date;
	bh=Ql9dBV7KdMtqUSnjiRqn7eoZ05q1mh+azMyfB/uBIq8=;
	b=D6ag/EWDWRpRSK/IlpdPNuQMU49WzWgQreGkUkiqVJAZ/jmkZRLsma2A/5kPYNvo
	e+CEMQb0IAw22BQJsOe8rXvyQMD6N27X5puYhBDfrtqtYR0ZEt2RGvSsfrb4zX7QgFJ
	W7GA32/uuYuo+B1NtJHVKYt+ZS5bW7bAjb3ZWWoQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656497812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ql9dBV7KdMtqUSnjiRqn7eoZ05q1mh+azMyfB/uBIq8=;
	b=A2kHUDeFVc5ihrAg+henv1bCnQ9X6BziYomaSnU8Pg5bbfejWdGeCasx72HT/C+U
	eWpNh5anu9lRp+JFLmKSrBrgIjfFmOHCb4YlLF0DtR6G9KIssGAkwMDJVYhsRBzqgrU
	mpCVivrk17fDxljoOa61+qWtUqhK1TUKZE/Cgjrg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aef6b333-74b21131-202e-4097-b635-69bcbfa7f9b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d90f743a77cca44534b38db0e4a5657eb358f01536900f6accc4dcbdc4f941d
Date: Wed, 29 Jun 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656497812
