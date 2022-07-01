Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C0510F3
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 04:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656649012;
	h=To:Subject:From:Message-Id:Date;
	bh=64wilsmaRK1keAkdONnTylEAG2sov3f/Y6V7TCBxiAo=;
	b=W86qRS1i4i+Vp/1rMnxREOf0cdnVg0scO6y6jtjJ8CSIUvz3o7jeaPOI18RkXTb5
	i0HdktuUqyTURBHMfuyFm4+Fc77gGArgvwo8oVMk6Y6tVV9ou5jab/T42gol6azlFDv
	BgE++O2InLuKcRujQovODl8z0iFwNgpNbvfMGC/Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656649012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=64wilsmaRK1keAkdONnTylEAG2sov3f/Y6V7TCBxiAo=;
	b=dC9cbrCzhKYE4dl5/4CdE51wCobv5wSX+EqeTHEetzoIDdgFkwrL3GfZ25cTciTY
	YmD7mRsN7Z22Ap8Gls+3p1ZMqF/1CBslAyxAw+EMTwsxhWDKGQA8J+DFivOt4oCGfwy
	BNIwKFoJHidnjP73QSJHG1cKJfzU6BBYHgIpCmKo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b7f9d451-8ced4312-d9fc-44ce-b6aa-3e7c8920242f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d224456749c94b698fc74fef1d89e496e3d155ed80267499f493e9102a1529a
Date: Fri, 1 Jul 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656649012
