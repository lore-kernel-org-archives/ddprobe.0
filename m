Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158C566C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 18:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645640185;
	h=To:Subject:From:Message-Id:Date;
	bh=m+4fSH6g8glzDXYKQD6clxhYIvQT6zYL3Ib+ZtZORmE=;
	b=c2EgnC4C3AlrGPrz+rTxP+nZ3dO6X3yseT7u55oZ6Rba7JUpyg5Xcw1WJqk9sKGs
	HzPn0ESB1uCKSCjFV46B+U3voWmGGsaHAr836q46QBPhPk+rOmJOD4Xev0uTmXU9sk9
	GpjRHbsTCHGnVYnHkn05GVOdPzdX6Xh8oWUcgBfs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645640185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m+4fSH6g8glzDXYKQD6clxhYIvQT6zYL3Ib+ZtZORmE=;
	b=crX53UNZRqEtQq9HXyuGjiEtFYB2CqxH8Rq8tpo+SxmzIdOZVupCkUtsIztlukuI
	Hwf1yU56EgQyO4k40sXaT8ACJFydj6Hbz1IHyNUsigvxeMMnjufNRc5k/QabHw7lj2L
	3d7VXBoQmJ9xWrjNeqRSDMc6qL5Yma6HMiJwIlpI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f27cc746f-4d682ea1-9373-4db4-9272-794527aed25a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a270ab766a9de3034b027f4d59440ec852189276fc6e397eb4766e55e03d7af4
Date: Wed, 23 Feb 2022 18:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645640184
