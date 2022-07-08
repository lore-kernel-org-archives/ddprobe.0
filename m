Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2142B4C72
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 23:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657324612;
	h=To:Subject:From:Message-Id:Date;
	bh=fR9aMXEpdLyPCNtOF2hVXdB9SZXQkxRSLMTLnhDnVRI=;
	b=YoTFAcPGHORiWoPvq9fVdY2d3obN5TKh+hWKybTWPKLiYrNcbce87lrOw6t86VZV
	81PEMn6WxOPYSByJTxECQeu3LwTcD+n7PW1gJr6cuRbQMl8SDrcd08pG/91U/ooweF0
	lFkUbvqo9coHmGW7PjYxv0MD+143PyLqgnL1KbTU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657324612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fR9aMXEpdLyPCNtOF2hVXdB9SZXQkxRSLMTLnhDnVRI=;
	b=AhmizLlKosOewtKD7wCBkLUdJFRwyY/QGani0g7p4oGlNhlrUK1EVLtccK10Qhxh
	DoRMQ29flLOh+naj5M0C7Sw0lFhp0587FpwnjjJKb/1ZX2pEjBpWmSeGoW26IpK+qIS
	7aLSmNzy07cTjgJq3ZvzDhduSu09QQBT/BMHRovM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e03eab3e-46370d56-5a81-4df8-bd21-6384bbac230c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a28324c460669b306629913ed8533ab8f251f8ba699483fac2a46dad23e48a6d
Date: Fri, 8 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657324612
