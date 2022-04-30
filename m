Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B663185E
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 20:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651352338;
	h=To:Subject:From:Message-Id:Date;
	bh=vFd7UM8h2jNy5AST3+AMFFGjDHAcaWRouf8l+POsYdg=;
	b=I0dmDS15v/aGzXaXk1U28O2A8vh3eXdSAIAulHj+90+enoum0HLvuOW1gmvBUVYZ
	Gmv3KQNvz2fzjgVBo819n2AIf36MsP33vVqBgjyPe1QSjmuVlh6MQQlNqgDQKhOT0SS
	qxyct1dc2ZFGJhgrJhbbMA1S6b9gVj9ADs4/f+RE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651352338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vFd7UM8h2jNy5AST3+AMFFGjDHAcaWRouf8l+POsYdg=;
	b=PUmap+SeTevLrFKpTFXZf8/tZn+ACP8ysGYE81DH5au/PmaJQUeeDA8LBbtUWZ/h
	qniWDj+PWT54fD1P08lE2f/NxLrH0VSYyX+gLawbNMskUSitdJ4LO9mQteNgRH8qm0P
	Qx91ahjahaHlinKBdlyM2SLdTYEx0F2jJeC154ZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807c44ff40-6b277ba8-a150-4f66-bf51-84e36f595703-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03a94b6c6187c8bffdfd7efad29071a4e2bbc8eefe50885c72b5cc46fdff7376
Date: Sat, 30 Apr 2022 20:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651352338
