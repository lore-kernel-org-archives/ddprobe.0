Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABA5B4289
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647868285;
	h=To:Subject:From:Message-Id:Date;
	bh=prg9q9+lZBPZdyFVp3dyDescQkYANGrcarPpi9uTfVE=;
	b=k089oJppX1sYTvtwohbRTwpJKez4j9ZWheJxTRcmDtfOKNL8TOPsnPySHkezQ7Po
	QaWai5vOobBiqACpP9HgPkyKBBx9MxqTG8aXyVU+r2DKkVIJidRz9+lZuPCXZE4zEiQ
	5Nj+QIGNldMaWpFofGigdupUXygNabRUi4oNe+1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647868285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=prg9q9+lZBPZdyFVp3dyDescQkYANGrcarPpi9uTfVE=;
	b=FYwR9QcvBfvPy6PQFyKF1j3TB4sFQCBWtw7J5SFE565we+EhqyRd/wzzQpwl2wjn
	cCAjyCtkq76CtU0gTf+3eXxzwUVr59e8fdGK1AUcBvVmu+X9JSsyZKlZzbHROXLWPn1
	3UoKqbGPV0EDplcyMPF7yqki0g/S+MgA9VHyBGTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac9a8fa9-e19e0a50-6401-4fb4-9170-a9a92ad373f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 176602343ae7a59813a2b5815fa403e78c1cc1f72223107c95841c77d13f87c5
Date: Mon, 21 Mar 2022 13:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647868284
