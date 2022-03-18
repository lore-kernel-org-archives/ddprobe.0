Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0571B2F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 09:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647596785;
	h=To:Subject:From:Message-Id:Date;
	bh=4tnZDFKQX3+TmrcoMkrOIUa99g6ox53mU/ppMsGSW9E=;
	b=UA7h+10VEtfDVqvaXa2JXIOVtbCfu19WGE+lunPfhY66FglwxdZ0T5/pkj1bhIPl
	g+vo5Ae0WButVHeH6anr/ZSrorqddY/UcDITzdf4Bkhb1D+v/u3tC8kxT9qp7xhM5lL
	5I4rKX/Zw87DJ8HBoqXyFrjc29LcyJ5QaNsZE01c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647596785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4tnZDFKQX3+TmrcoMkrOIUa99g6ox53mU/ppMsGSW9E=;
	b=Z/T4JCPGpdgNKMzQc/d2tp2Sk4UVHYmYKQaqnh0v2azXtbmqHUz6vtnsBwCLtgq5
	TAy4OA+VSGNo2tHftpFsC6pvUf0NLcrsASdRwctlf4mCOW64WrsXi2Lmj/4w2F1nDkk
	Amb0MLNNgNDO2oZXZ59tJX5Ryad0RwzNEb9ZN3ps=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c6bcc72-9c5c1879-39f5-4fa9-a719-d4d9e70f5b03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5892b13bad94ad24e73bde277702edd613b17e4310c75db01fa4011eef7e720
Date: Fri, 18 Mar 2022 09:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647596784
