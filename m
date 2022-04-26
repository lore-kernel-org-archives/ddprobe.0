Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECFEB7B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 18:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650996058;
	h=To:Subject:From:Message-Id:Date;
	bh=wjeYe4SIGQVBOz+uiCBFD7Rcwl2dyTrucuJPLgJHdnI=;
	b=EmBMoKy7GgqGIvetIItvNnDZk/StoyU/B0SM1gCxrDLWFGLUWA28GwFtS08eblSE
	1nJjr9m8TA0Fj0YJqBtBVijgWZHMTZvYiYN/tdvPRABJuC2R7F3JLpoam2RBUwspH06
	fH1hb/RryxQA6Q2u9Txtq1c2x40mlnjBBS/GXkRw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650996058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wjeYe4SIGQVBOz+uiCBFD7Rcwl2dyTrucuJPLgJHdnI=;
	b=M6xne4pQdr4PXFXcSSzHzJR6FbvGJIx3T+qIqG5Xh7ZKR+K/MQ97toJ4fcngdFTO
	nu+ruBPIEwUY6Uk+MGqq28ekrVPqCJgjl9dP7T53xobzx3u+rx4F2T9thqffWsBtJx3
	LiHxNig5OZZ59aG5ztbWd1+e0e1q3sWO3dxJBaNM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018067089896-9583ef3b-00c9-4a21-b8b9-8260e50cafb2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9348e80a19c22662312431d8329ff22b337700b68c6454dd1952f00d6d98360a
Date: Tue, 26 Apr 2022 18:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650996058
